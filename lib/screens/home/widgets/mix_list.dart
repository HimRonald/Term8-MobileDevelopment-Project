import 'package:flutter/material.dart';
import 'mix_card.dart';

class MixList extends StatelessWidget {
  const MixList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {
        'image': 'assets/images/mix1.png',
        'title': 'Billie Eilish, C418, Tame Impala and more'
      },
      {
        'image': 'assets/images/mix2.png',
        'title': 'salvia paltch, Øneheart, Haley Heynderickx and more'
      },
      {
        'image': 'assets/images/mix3.png',
        'title': 'Lil Yawh, Trinidad Cardona, A.Oonthebeat and more'
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
