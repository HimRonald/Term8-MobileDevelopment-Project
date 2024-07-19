import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/profile/profile_screen.dart';
import 'package:flutter_spotify/screens/setting/setting_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../widgets/custom_title.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF62E58C),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'M',
                    style: TextStyle(
                      color: Color(0xFF000100),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            const CustomTitle(title: "Good afternoon"),
          ],
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/SettingIcon.svg",
              width: 28, height: 28),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          },
        ),
      ],
    );
  }
}
