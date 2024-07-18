import 'package:flutter/material.dart';
import 'mix_card.dart';

class SpotifyPlaylist extends StatelessWidget {
  const SpotifyPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {
        'image': 'assets/images/spotifyplaylist1.jpeg',
        'title':
            'Billie Eilish, Sabrina Carpenter, Post Malone, Doja Cat and more'
      },
      {
        'image': 'assets/images/spotifyplaylist2.jpeg',
        'title': 'Eminem, Katy Perry, Teddy Swims, Artemas, Clario and more'
      },
      {
        'image': 'assets/images/spotifyplaylist3.jpeg',
        'title':
            'Ben Böhmer, Satin Jackets, Tonic Walter, Floating Points, and more'
      },
      {
        'image': 'assets/images/spotifyplaylist4.jpeg',
        'title': 'HARDY, ONE OK ROCK, Seether, The Beaches, and more'
      },
      {
        'image': 'assets/images/spotifyplaylist5.jpeg',
        'title': 'd4vd, Orion Sun, Moses Sumney, Terrace Martin, and more'
      },
      {
        'image': 'assets/images/spotifyplaylist6.jpeg',
        'title': 'Peso Pluma, KAROL G, Feid, Natanael Cano, and more'
      },
      {
        'image': 'assets/images/spotifyplaylist7.jpeg',
        'title': 'Eternxlkz, LXNGVX, Kordhell, xxanteria, and more'
      },
      {
        'image': 'assets/images/spotifyplaylist8.jpeg',
        'title': 'NewJeans, ENHYPEN, LISA, (G)I-DLE, and more'
      },
      {
        'image': 'assets/images/spotifyplaylist9.jpeg',
        'title': 'Morgan Wallen, Post Malone, Marshmello, Shaboozey, and more'
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
