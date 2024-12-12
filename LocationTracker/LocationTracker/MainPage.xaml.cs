using LocationTracker;  // For LocationDataService
using Microsoft.Maui.Devices.Sensors;  // For GPS access
using Microsoft.Maui.Controls.Maps;
using Microsoft.Maui.Maps;
using Microsoft.Maui.ApplicationModel;
using SkiaSharp;  // For SkiaSharp
using SkiaSharp.Views.Maui.Controls;  // For SKCanvasView

namespace LocationTracker
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            MapView.MapType = MapType.Street;

            // Center the map on the user's current location
            CenterMapOnCurrentLocationAsync();

            // Load saved locations as markers when the page loads
            LoadMarkersOnMap();

            // Listen for map region changes to refresh heatmap
            MapView.PropertyChanged += OnMapRegionChanged;
        }

        private async Task<bool> CheckAndRequestLocationPermissionAsync()
        {
            var status = await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();

            if (status != PermissionStatus.Granted)
            {
                status = await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
            }

            return status == PermissionStatus.Granted;
        }

        private async Task<Location?> GetUserLocationAsync()
        {
            try
            {
                // Ensure permissions are granted
                if (await CheckAndRequestLocationPermissionAsync())
                {
                    var location = await Geolocation.GetLastKnownLocationAsync();

                    if (location != null)
                    {
                        return location;
                    }

                    return await Geolocation.GetLocationAsync(new GeolocationRequest
                    {
                        DesiredAccuracy = GeolocationAccuracy.Best,
                        Timeout = TimeSpan.FromSeconds(10)
                    });
                }
                else
                {
                    await DisplayAlert("Permission Denied", "Location permission is required.", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Unable to get location: {ex.Message}", "OK");
            }

            return null;
        }

        private async Task CenterMapOnCurrentLocationAsync()
        {
            try
            {
                // Ensure permissions are granted
                if (await CheckAndRequestLocationPermissionAsync())
                {
                    var location = await Geolocation.GetLastKnownLocationAsync();

                    if (location != null)
                    {
                        // Set the map's visible region to the user's current location
                        MapView.MoveToRegion(MapSpan.FromCenterAndRadius(
                            new Location(location.Latitude, location.Longitude),
                            Distance.FromKilometers(1))); // Zoom to 1 km radius
                    }
                    else
                    {
                        // Try fetching a fresh location if no last known location is available
                        location = await Geolocation.GetLocationAsync(new GeolocationRequest
                        {
                            DesiredAccuracy = GeolocationAccuracy.Best,
                            Timeout = TimeSpan.FromSeconds(10)
                        });

                        if (location != null)
                        {
                            MapView.MoveToRegion(MapSpan.FromCenterAndRadius(
                                new Location(location.Latitude, location.Longitude),
                                Distance.FromKilometers(1)));
                        }
                    }
                }
                else
                {
                    await DisplayAlert("Permission Denied", "Location permission is required to center the map.", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Unable to fetch location: {ex.Message}", "OK");
            }
        }

        private async void OnSaveLocationClicked(object sender, EventArgs e)
        {
            try
            {
                if (await CheckAndRequestLocationPermissionAsync())
                {
                    var location = await Geolocation.GetLastKnownLocationAsync();

                    if (location != null)
                    {
                        // Save the location to the database
                        LocationDataService.SaveLocation(location.Latitude, location.Longitude);

                        // Reload markers on the map
                        LoadMarkersOnMap();

                        // Refresh the heatmap
                        HeatmapCanvas.InvalidateSurface();

                        // Display success message
                        await DisplayAlert("Success", "Location saved to the database and marker added.", "OK");
                    }
                    else
                    {
                        await DisplayAlert("Error", "Unable to fetch location.", "OK");
                    }
                }
                else
                {
                    await DisplayAlert("Permission Denied", "Location permission is required.", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Failed to get location: {ex.Message}", "OK");
            }
        }

        private async void OnGetLocationClicked(object sender, EventArgs e)
        {
            var location = await GetUserLocationAsync();
            if (location != null)
            {
                await DisplayAlert("Location", $"Latitude: {location.Latitude}, Longitude: {location.Longitude}", "OK");
            }
        }

        private void LoadMarkersOnMap()
        {
            // Fetch all saved locations from the database
            var locations = LocationDataService.GetAllLocations();

            // Clear existing pins on the map
            MapView.Pins.Clear();

            // Add a pin for each location
            foreach (var location in locations)
            {
                var pin = new Pin
                {
                    Label = "Saved Location",
                    Location = new Location(location.Latitude, location.Longitude),
                    Type = PinType.Place // Optional: Pin type
                };

                MapView.Pins.Add(pin);
            }
        }

        private void OnMapRegionChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(MapView.VisibleRegion))
            {
                // Refresh the heatmap when the map's visible region changes
                HeatmapCanvas.InvalidateSurface();
            }
        }

        private (float X, float Y) ConvertLocationToPixel(Location location, Microsoft.Maui.Controls.Maps.Map map)
        {
            var mapRegion = map.VisibleRegion;

            if (mapRegion == null)
                return (0, 0); // Return (0, 0) if the map's visible region is null

            var latitudeDelta = mapRegion.LatitudeDegrees;
            var longitudeDelta = mapRegion.LongitudeDegrees;

            var left = mapRegion.Center.Longitude - (longitudeDelta / 2);
            var top = mapRegion.Center.Latitude + (latitudeDelta / 2);

            var x = (float)((location.Longitude - left) / longitudeDelta * map.Width);
            var y = (float)((top - location.Latitude) / latitudeDelta * map.Height);

            return (x, y);
        }

        private void OnPaintSurface(object sender, SkiaSharp.Views.Maui.SKPaintSurfaceEventArgs e)
        {
            var canvas = e.Surface.Canvas;
            canvas.Clear();

            // Get the clusters with intensity
            var clusters = LocationDataService.GetClusteredLocations();

            // Set up paint for heatmap
            var paint = new SKPaint
            {
                IsAntialias = true,
                Style = SKPaintStyle.Fill
            };

            // Get map bounds
            var mapRegion = MapView.VisibleRegion;

            if (mapRegion == null) return;

            // Loop through clusters and draw heatmap points
            foreach (var cluster in clusters)
            {
                // Convert latitude/longitude to pixel coordinates
                var point = ConvertLocationToPixel(new Location(cluster.Latitude, cluster.Longitude), MapView);

                // Set color intensity based on density
                paint.Color = new SKColor(255, 0, 0, (byte)(Math.Min(1.0, cluster.Intensity / 10.0) * 255));


                // Draw a circle
                canvas.DrawCircle(point.X, point.Y, cluster.Intensity * 5, paint);
            }
        }
    }
}
