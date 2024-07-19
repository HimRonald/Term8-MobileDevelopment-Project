import 'package:flutter/material.dart';

class PremiumDuo extends StatelessWidget {
  const PremiumDuo({
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
                      'Premium Duo - \$9.99',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 228, 226, 153),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\u2022 2 accounts',
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
        )
      )
    );
  }
}
