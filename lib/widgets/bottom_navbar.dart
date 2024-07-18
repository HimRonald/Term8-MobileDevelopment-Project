import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF000000),
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xFFB7B7B7),
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontFamily: 'spotifyfont',
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontFamily: 'spotifyfont',
      ),
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/icons/Home.svg",
                width: 28, height: 28),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/icons/SearchIcon.svg",
                width: 28, height: 28),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/icons/Library.svg",
                width: 28, height: 28),
          ),
          label: 'Your Library',
        ),
      ],
    );
  }
}
