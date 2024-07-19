import 'package:flutter/material.dart';

class PremiumIndividual extends StatelessWidget {
  const PremiumIndividual({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: double.infinity,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color.fromARGB(255, 67, 69, 67),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Premium Individual - \$6.99',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 187, 136, 196),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\u2022 1 account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\u2022 Listen to music ad-free',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\u2022 Play anywhere - even offline',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\u2022 On-demand playback',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\u2022 Unlimited skips',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\u2022 High quality audio',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\u2022 Cancel anytime',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
