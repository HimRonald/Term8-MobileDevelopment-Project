import 'package:flutter/material.dart';

class ArtistCard extends StatelessWidget {
  final String image;
  final String artist;

  const ArtistCard({
    super.key,
    required this.image,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image(
            image: AssetImage(image),
            width: 75,
            height: 75,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                artist,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'spotifyfont',
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              const Text(
                'Artist',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontFamily: 'spotifyfont',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
