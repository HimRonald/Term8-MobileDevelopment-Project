import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  final String image;
  final String title;

  const SuggestionItem({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF292929),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontFamily: 'spotifyfont',
            ),
          ),
        ],
      ),
    );
  }
}
