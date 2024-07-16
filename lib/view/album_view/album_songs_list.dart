import 'package:flutter/material.dart';
import 'package:flutter_spotify/constants/const.dart';

class AlbumSongsList extends StatelessWidget {
  const AlbumSongsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index >= laufeySongList.length) {
            return null; // Prevent index out of range
          }
          return DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: ListTile(
              onTap: () {},
              tileColor: Colors.black,
              title: Text(
                laufeySongList[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: const Text(
                "Laufey",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
        childCount: laufeySongList.length, // Specify the length of the list
      ),
    );
  }
}
