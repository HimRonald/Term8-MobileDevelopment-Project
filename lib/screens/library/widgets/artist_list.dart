import 'package:flutter/material.dart';
import 'artist_card.dart';

class ArtistList extends StatelessWidget {
  const ArtistList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {
        'image': 'assets/images/artist1.jpeg',
        'artist': 'Dua Lipa',
      },
      {
        'image': 'assets/images/artist2.jpeg',
        'artist': 'Arctic Monkys',
      },
      {
        'image': 'assets/images/artist3.jpeg',
        'artist': 'Ariana Grande',
      },
      {
        'image': 'assets/images/artist4.jpeg',
        'artist': 'Lana Del Rey',
      },
      {
        'image': 'assets/images/artist5.jpeg',
        'artist': 'Camila Cabello',
      },
      {
        'image': 'assets/images/artist6.jpeg',
        'artist': 'Halsey',
      },
      {
        'image': 'assets/images/artist7.jpeg',
        'artist': 'Selena Gomez',
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ArtistCard(
            image: items[index]['image']!,
            artist: items[index]['artist']!,
          ),
        );
      },
    );
  }
}