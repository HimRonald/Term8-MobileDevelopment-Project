import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../widgets/custom_title.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomTitle(title: "Good afternoon"),
        Row(
          children: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/NotiIcon.svg",
                  width: 28, height: 28),
              onPressed: () {},
            ),
            const SizedBox(width: 12),
            IconButton(
              icon: SvgPicture.asset("assets/icons/HistoryIcon.svg",
                  width: 28, height: 28),
              onPressed: () {},
            ),
            const SizedBox(width: 12),
            IconButton(
              icon: SvgPicture.asset("assets/icons/SettingIcon.svg",
                  width: 28, height: 28),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
