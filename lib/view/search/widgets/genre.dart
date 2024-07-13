import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    Key? key,
    required this.title,
    required this.color,
    required this.imagePath, // New parameter for image path or URL
  }) : super(key: key);

  final String title;
  final Color color; // Single color for the genre card
  final String imagePath; // Image path or URL for the genre card

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 2.25,
      height: 100,// Adjust height as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color, // Use single color for background
      ),
      child: Stack(
        children: [
          // Rotated image background
          Positioned(
            top: 0,
            right: -10,
            bottom: 0,
            child: Transform.rotate(
              angle: 20 * 3.14 / 180, // Convert degrees to radians
              child: ClipRect(
                child: Image.network(
                  imagePath,
                  width: 60, // Adjust width of the image
                ),
              ),
            ),
          ),
          // Gradient overlay (optional)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          // Title at bottom left
          Positioned(
            left: 16,
            bottom: 48,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
