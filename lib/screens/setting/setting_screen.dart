import 'package:flutter/material.dart';

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
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        title: const Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'spotifyfont',
                  ),
                ),
              ),
            ),
            SizedBox(width: 48),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: settings.length + 1,
        itemBuilder: (context, index) {
          if (index < settings.length) {
            return ListTile(
              title: Text(
                settings[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'spotifyfont',
                ),
              ),
              onTap: () {},
            );
          } else {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 150.0),
              child: ElevatedButton(
                onPressed: () {},
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
