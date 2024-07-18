import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String image;
  final String title;
  final String albumType;
  final String artist;

  const AlbumCard({
    super.key,
    required this.image,
    required this.title,
    required this.albumType,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'spotifyfont',
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    albumType,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontFamily: 'spotifyfont',
                    ),
                  ),
                  const Text(
                    '・',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontFamily: 'spotifyfont',
                    ),
                  ),
                  Expanded(
                    child: Text(
                      artist,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: 'spotifyfont',
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
