import 'package:flutter/material.dart';

class LibrarySort extends StatelessWidget {
  const LibrarySort({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/SortIcon.png',
                width: 18,
                height: 18,
                color: Colors.white,
              ),
            ),
            const Text(
              'Recents',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'spotifyfont',
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/BlockIcon.png',
            width: 18,
            height: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
