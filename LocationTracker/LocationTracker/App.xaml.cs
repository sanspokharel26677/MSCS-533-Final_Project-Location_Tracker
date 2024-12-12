using System.IO;
using LocationTracker; // Reference LocationDataService

namespace LocationTracker
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            // Initialize the database
            LocationDataService.InitializeDatabase();
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            return new Window(new AppShell());
        }
    }
}
