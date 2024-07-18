import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  final String image;
  final String title;

  const PlaylistCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          width: 170,
          height: 170,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 170,
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFFB8B8B8),
              fontSize: 13,
              fontFamily: 'spotifyfont',
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
