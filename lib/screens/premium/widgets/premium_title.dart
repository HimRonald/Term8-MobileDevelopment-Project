import 'package:flutter/material.dart';

class PremiumTitle extends StatelessWidget {
  const PremiumTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset(
            'assets/logo/whiteSpotify.png',
            width: 25,
            height: 25,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontFamily: 'spotifyfont',
          ),
        ),
      ],
    );
  }
}
