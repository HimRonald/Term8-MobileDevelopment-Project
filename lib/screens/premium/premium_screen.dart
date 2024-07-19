import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/premium/widgets/premium_duo.dart';
import 'package:flutter_spotify/screens/premium/widgets/premium_individual.dart';
import 'package:flutter_spotify/screens/premium/widgets/premium_student.dart';
import 'package:flutter_spotify/screens/premium/widgets/premium_title.dart';
import 'package:flutter_spotify/screens/premium/widgets/premium_why.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 60,
            ),
            PremiumTitle(
              title: 'Spotify Premium',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Get more out of your music with Premium Individual.',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                height: 1.2,
                fontFamily: 'spotifyfont',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Available plans',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                height: 1.2,
                fontFamily: 'spotifyfont',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PremiumIndividual(),
            SizedBox(
              height: 10,
            ),
            PremiumStudent(),
            SizedBox(
              height: 10,
            ),
            PremiumDuo(),
            SizedBox(
              height: 10,
            ),
            PremiumWhy()
          ],
        ),
      ),
    );
  }
}
