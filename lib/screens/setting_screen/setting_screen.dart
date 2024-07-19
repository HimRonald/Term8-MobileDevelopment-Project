import 'package:flutter/material.dart';

class SettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Screen',
      theme: ThemeData.dark(), // Use dark theme
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final List<String> settings = [
    'Account',
    'Content and display',
    'Data saver',
    'Playback',
    'Devices',
    'Navigation & other apps',
    'Car',
    'Privacy and social',
    'Audio quality',
    'Video quality',
    'Storage',
    'Notification',
    'Local files',
    'About',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Handle back button press
              },
            ),
            Expanded(
              child: Center(
                child: Text('Settings'),
              ),
            ),
            SizedBox(width: 48), // Add a dummy space to balance the layout
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: settings.length + 1,
        itemBuilder: (context, index) {
          if (index < settings.length) {
            return ListTile(
              title: Text(settings[index]),
              onTap: () {
                // Handle tap if needed
              },
            );
          } else {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 150.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle logout button press
                },
                child: Text('Log out'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white, // Text color
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
