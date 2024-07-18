import 'package:flutter/material.dart';
import 'podcast_episode.dart';

class PodcastList extends StatelessWidget {
  const PodcastList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {
        'image': 'assets/images/podcast1.jpeg',
        'title': 'Unpacking Galaxy Unpacked 2024',
        'description':
            'This week, Marques, Andrew, and David go over a few quick news stories'
      },
      {
        'image': 'assets/images/podcast2.jpeg',
        'title':
            '#373: Burning Sun\'s Idols Released From Prison - Now Trying to Make Comeback & Open New Club',
        'description':
            'This week, Marques, Andrew, and David go over a few quick news stories'
      },
      {
        'image': 'assets/images/podcast2.jpeg',
        'title':
            "#374: Stalker Fan Sends Acid Bomb To Famous Singer, \"Because if she's ugly, then no one will want her\"",
        // 'description':
        //     'This week, Marques, Andrew, and David go over a few quick news stories This week, Marques, Andrew, and David go over a few quick news stories',
      },
    ];

    int columnCount = (items.length / 2).ceil();

    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: columnCount * 375 + (columnCount - 1) * 16.0,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columnCount,
              mainAxisSpacing: 8,
              crossAxisSpacing: 16,
              mainAxisExtent: 130,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return PodcastEpisode(
                image: items[index]['image']!,
                title: items[index]['title']!,
                description: items[index]['description'],
              );
            },
          ),
        ),
      ),
    );
  }
}
