import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/player/player_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewReleaseCard extends StatelessWidget {
  const NewReleaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            ClipOval(
              child: Image(
                image: AssetImage("assets/images/new_release_artist.jpeg"),
                width: 65,
                height: 65,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New release from',
                  style: TextStyle(
                      color: Color(0xFFB8B8B8),
                      fontSize: 14,
                      fontFamily: 'spotifyfont'),
                ),
                Text(
                  'keshi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'spotifyfont',
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              child: Image(
                image: AssetImage("assets/images/new_release_single.jpeg"),
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                  color: Color(0xFF292929),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Say',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'spotifyfont',
                            ),
                          ),
                          Text(
                            'Single・keshi',
                            style: TextStyle(
                              color: Color(0xFFB8B8B8),
                              fontSize: 14,
                              fontFamily: 'spotifyfont',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset("assets/icons/AddIcon.svg",
                                width: 25, height: 25),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: SvgPicture.asset("assets/icons/Play.svg",
                                width: 35, height: 35),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PlayerScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
