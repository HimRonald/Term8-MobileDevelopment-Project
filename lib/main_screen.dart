import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/home/home_screen.dart';
import 'package:flutter_spotify/screens/library/library_screen.dart';
import 'package:flutter_spotify/screens/search/search_page.dart';
import 'package:flutter_spotify/screens/premium/premium_screen.dart';
import 'package:flutter_spotify/widgets/bottom_navbar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomeScreen(),
          SearchPage(),
          LibraryScreen(),
          PremiumScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}