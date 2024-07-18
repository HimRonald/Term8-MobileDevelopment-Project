import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String image;
  final String title;
  final String albumType;
  final String artist;

  const AlbumCard(
      {super.key,
      required this.image,
      required this.title,
      required this.albumType,
      required this.artist});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'spotifyfont',
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Wrap(
                children: [
                  Text(
                    albumType,
                    style: const TextStyle(
                      color: const Color(0xFFB8B8B8),
                      fontSize: 12,
                      fontFamily: 'spotifyfont',
                    ),
                  ),
                  const Text(
                    '・',
                    style: TextStyle(
                      color: Color(0xFFB8B8B8),
                      fontSize: 12,
                      fontFamily: 'spotifyfont',
                    ),
                  ),
                  Text(
                    artist,
                    style: const TextStyle(
                      color: Color(0xFFB8B8B8),
                      fontSize: 12,
                      fontFamily: 'spotifyfont',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
