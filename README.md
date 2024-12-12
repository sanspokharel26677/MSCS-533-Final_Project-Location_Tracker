# MSCS-533-Final_Project-Location_Tracker

# Location Tracker App

## Overview
The Location Tracker App is built using C# and .NET MAUI. It tracks the user's current location, saves it to a SQLite database, and visualizes the data on a map. Additionally, the app overlays a heatmap to represent location intensity.

## Features
- Fetch the user's current location.
- Save locations to a SQLite database.
- Display saved locations as markers on the map.
- Overlay a heatmap to visualize the intensity of saved locations.
- Responsive and intuitive UI for Android.

## Technologies Used
- **C#**
- **.NET MAUI**
- **SQLite** for database management
- **Google Maps** for map integration
- **SkiaSharp** for drawing the heatmap

## Prerequisites
- Visual Studio 2022 or later
- .NET SDK 7.0 or higher
- Android Emulator or physical Android device for testing
- Google Maps API key

## Installation

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd LocationTracker
   ```

2. **Set Up Google Maps API Key**
   - Navigate to `Platforms/Android/AndroidManifest.xml`.
   - Replace `YOUR_GOOGLE_MAPS_API_KEY` with your actual API key.

3. **Install Required NuGet Packages**
   - `sqlite-net-pcl`
   - `SkiaSharp.Views.Maui.Controls`

   Use the NuGet Package Manager or the following commands:
   ```bash
   dotnet add package sqlite-net-pcl
   dotnet add package SkiaSharp.Views.Maui.Controls
   ```

4. **Build and Run the App**
   - Open the project in Visual Studio.
   - Select an Android emulator or connected device.
   - Press `F5` to build and run the app.

## Usage

### Fetch Current Location
- Tap the **"Get My Location"** button to fetch and display your current location on the map.

### Save Location
- Tap the **"Save My Location"** button to save the current location to the SQLite database. A marker will be added to the map.

### View Heatmap
- Saved locations will automatically update the heatmap. The heatmap intensity increases with overlapping locations.

### Adding Dummy Data
For testing, you can programmatically add dummy locations:
- Use the `AddDummyLocations` method in `LocationDataService.cs` to prepopulate the database with sample locations.

## File Structure
- `MainPage.xaml`:
  - Defines the UI layout, including the map and buttons.
- `MainPage.xaml.cs`:
  - Contains the logic for fetching, saving, and displaying locations.
- `LocationDataService.cs`:
  - Manages SQLite operations (saving, retrieving locations).
- `App.xaml.cs`:
  - Initializes the SQLite database and application settings.

## Troubleshooting

1. **Map Not Loading**
   - Ensure the Google Maps API key is correctly configured.
   - Check if internet connectivity is available.

2. **Heatmap Not Displaying**
   - Verify that `SkiaSharp.Views.Maui.Controls` is installed.
   - Ensure the `HeatmapCanvas` is properly layered over the map in `MainPage.xaml`.

3. **Location Permissions**
   - Confirm that the app has location permissions enabled on the device.
   - Debug with `CheckAndRequestLocationPermissionAsync()` in `MainPage.xaml.cs`.

## Future Enhancements
- Enable real-time heatmap updates as the user moves.
- Add support for iOS.
- Improve the visual styling of the heatmap.

## License
<place holder for license>

## Acknowledgments
- Microsoft for .NET MAUI
- Google for Maps API
- SkiaSharp for graphical rendering
