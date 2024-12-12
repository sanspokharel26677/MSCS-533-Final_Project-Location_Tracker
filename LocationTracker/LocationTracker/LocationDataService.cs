using System;
using System.IO;
using Microsoft.Data.Sqlite;
using System.Collections.Generic;
using System.Linq;

namespace LocationTracker
{
    public static class LocationDataService
    {
        private static readonly string DbPath = Path.Combine(FileSystem.AppDataDirectory, "LocationData.db");

        // Method to initialize the database and create the table if it doesn't exist
        public static void InitializeDatabase()
        {
            using var connection = new SqliteConnection($"Data Source={DbPath}");
            connection.Open();

            string createTableQuery = @"
                CREATE TABLE IF NOT EXISTS Locations (
                    Id INTEGER PRIMARY KEY AUTOINCREMENT,
                    Latitude REAL NOT NULL,
                    Longitude REAL NOT NULL,
                    Timestamp TEXT NOT NULL
                );
            ";

            using var command = connection.CreateCommand();
            command.CommandText = createTableQuery;
            command.ExecuteNonQuery();
        }

        // Method to save a location to the database
        public static void SaveLocation(double latitude, double longitude)
        {
            using var connection = new SqliteConnection($"Data Source={DbPath}");
            connection.Open();

            string insertQuery = @"
                INSERT INTO Locations (Latitude, Longitude, Timestamp)
                VALUES (@Latitude, @Longitude, @Timestamp);
            ";

            using var command = connection.CreateCommand();
            command.CommandText = insertQuery;
            command.Parameters.AddWithValue("@Latitude", latitude);
            command.Parameters.AddWithValue("@Longitude", longitude);
            command.Parameters.AddWithValue("@Timestamp", DateTime.UtcNow.ToString("o"));
            command.ExecuteNonQuery();
        }

        // Method to fetch all locations from the database
        public static List<(double Latitude, double Longitude)> GetAllLocations()
        {
            using var connection = new SqliteConnection($"Data Source={DbPath}");
            connection.Open();

            string selectQuery = "SELECT Latitude, Longitude FROM Locations";

            using var command = connection.CreateCommand();
            command.CommandText = selectQuery;

            using var reader = command.ExecuteReader();
            var locations = new List<(double Latitude, double Longitude)>();

            while (reader.Read())
            {
                locations.Add((reader.GetDouble(0), reader.GetDouble(1)));
            }

            return locations;
        }

        // Method to cluster locations and calculate intensity for heatmap
        public static List<(double Latitude, double Longitude, int Intensity)> GetClusteredLocations()
        {
            var locations = GetAllLocations();
            var clusters = new Dictionary<(double, double), int>();

            // Define a grid size for clustering (e.g., 0.01 degrees ~ 1 km)
            double gridSize = 0.01;

            foreach (var loc in locations)
            {
                // Round locations to the nearest grid point
                var clusterKey = (
                    Math.Round(loc.Latitude / gridSize) * gridSize,
                    Math.Round(loc.Longitude / gridSize) * gridSize
                );

                if (clusters.ContainsKey(clusterKey))
                    clusters[clusterKey]++;
                else
                    clusters[clusterKey] = 1;
            }

            // Convert clusters to a list with intensity
            return clusters.Select(c => (c.Key.Item1, c.Key.Item2, c.Value)).ToList();
        }
    }
}
