import 'package:flutter/material.dart';
import 'mix_card.dart';

class BestOfArtistList extends StatelessWidget {
  const BestOfArtistList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {
        'image': 'assets/images/bestofartist1.jpeg',
        'title':
            'This is Lana Del Rey. The essential tracks, all in one playlist.'
      },
      {
        'image': 'assets/images/bestofartist2.jpeg',
        'title': 'This is Doja Cat. The essential tracks, all in one playlist.'
      },
      {
        'image': 'assets/images/bestofartist3.jpeg',
        'title':
            'This is Charlie Puth. The essential tracks, all in one playlist.'
      },
      {
        'image': 'assets/images/bestofartist4.jpeg',
        'title': 'The essential tracks, all in one playlist.'
      },
      {
        'image': 'assets/images/bestofartist5.jpeg',
        'title': 'The essential tracks, all in one playlist.'
      },
      {
        'image': 'assets/images/bestofartist6.jpeg',
        'title':
            'The Weeknd, Future, Metro Boomin, Swedish House Mafia and more. The essential tracks, all in one playlist.'
      },
      {
        'image': 'assets/images/bestofartist7.jpeg',
        'title': 'All things Billie!'
      },
      {
        'image': 'assets/images/bestofartist8.jpeg',
        'title':
            'This is Tate McRae. The essential tracks, all in one playlist.'
      },
      {
        'image': 'assets/images/bestofartist9.jpeg',
        'title': 'The essential Olivia Rodrigo tracks, all in one playlist.'
      },
      {
        'image': 'assets/images/bestofartist10.jpeg',
        'title':
            'This is Isabel LaRosa. The essential tracks, all in one playlist.'
      },
    ];

    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: PlaylistCard(
              image: items[index]['image']!,
              title: items[index]['title']!,
            ),
          );
        },
      ),
    );
  }
}
