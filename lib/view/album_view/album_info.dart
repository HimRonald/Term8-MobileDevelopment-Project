
import 'package:flutter/material.dart';
import 'package:flutter_spotify/constants/const.dart';

class AlbumInfo extends StatelessWidget {
  const AlbumInfo({
    Key? key,
    required this.infoBoxHeight,
  }) : super(key: key);

  final double infoBoxHeight;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black87,
              ],
              stops: [
                0.00022,
                1.0,
              ]),
        ),
        child: SizedBox(
          height: infoBoxHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Everything I Know About Love",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage(edImageUrl),
                    ),
                    const SizedBox(
                      width: 15, // Reduced width to make the text closer
                    ),
                    const Text(
                      "Laufey",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Album . 2021",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.download_outlined,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
