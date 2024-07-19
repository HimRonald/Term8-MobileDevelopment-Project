import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/album_view/album_view.dart';
import 'album_card.dart';

class PopularAlbumsList extends StatelessWidget {
  const PopularAlbumsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {
        'image': 'assets/images/album1.jpeg',
        'title': 'Sweet & Poison',
        'albumType': 'Album',
        'artist': 'M-Fatt',
      },
      {
        'image': 'assets/images/album3.jpeg',
        'title': 'Everything I Know About Love',
        'albumType': 'Album',
        'artist': 'Laufey',
      },
      {
        'image': 'assets/images/album2.jpeg',
        'title': 'Cartel Meeting Vol.3',
        'albumType': 'Compilation',
        'artist': 'Various Artists',
      },
      {
        'image': 'assets/images/album4.jpeg',
        'title': 'Born To Die - The Paradise Edition',
        'albumType': 'Album',
        'artist': 'Lana Del Rey',
      },
      {
        'image': 'assets/images/album5.jpeg',
        'title': 'SONMALAI',
        'albumType': 'Album',
        'artist': 'KWAN',
      },
      {
        'image': 'assets/images/album6.jpeg',
        'title': 'Lover',
        'albumType': 'Album',
        'artist': 'Taylor Swift',
      },
      {
        'image': 'assets/images/album7.jpeg',
        'title': 'eternal sunshine',
        'albumType': 'Album',
        'artist': 'Ariana Grande',
      },
      {
        'image': 'assets/images/album8.jpeg',
        'title': 'Cigarettes After Sex',
        'albumType': 'Album',
        'artist': 'Cigarettes After Sex',
      },
      {
        'image': 'assets/images/album9.jpeg',
        'title': 'SOS',
        'albumType': 'Album',
        'artist': 'SZA',
      },
      {
        'image': 'assets/images/album10.jpeg',
        'title': 'HIT ME HARD AND SOFT',
        'albumType': 'Album',
        'artist': 'Billie Eilish',
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SpotifyAlbumView(),
                  ),
                );
              },
              child: AlbumCard(
                image: items[index]['image']!,
                title: items[index]['title']!,
                albumType: items[index]['albumType']!,
                artist: items[index]['artist']!,
              ),
            ),
          );
        },
      ),
    );
  }
}
