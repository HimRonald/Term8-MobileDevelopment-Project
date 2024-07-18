import 'package:flutter/material.dart';
import 'package:flutter_spotify/main_screen.dart';
import 'package:flutter_spotify/screens/home/home_screen.dart';
import 'package:flutter_spotify/screens/search/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}

