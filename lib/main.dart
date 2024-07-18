import 'package:flutter/material.dart';
import 'package:flutter_spotify/view/search/search_page.dart';
import 'package:flutter_spotify/view/tab/player/player_screen.dart';
import 'package:flutter_spotify/view/tab/player/widgets/splash.dart';
import 'package:flutter_spotify/view/tab/premium/premium_screen.dart';
import 'package:flutter_spotify/view/tab/tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

