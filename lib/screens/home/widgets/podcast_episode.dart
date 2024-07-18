import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PodcastEpisode extends StatelessWidget {
  final String image;
  final String title;
  final String? description;

  const PodcastEpisode({
    super.key,
    required this.image,
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 750,
      // height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(8),
            child: Image(
              image: AssetImage(image),
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'spotifyfont',
                  ),
                  maxLines: description == null ? 3 : 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  description ?? '',
                  style: const TextStyle(
                    color: Color(0xFFB8B8B8),
                    fontSize: 13,
                    fontFamily: 'spotifyfont',
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/AddIcon.svg",
                          width: 20, height: 20),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                    ),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/Play.svg",
                          width: 20, height: 20),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
