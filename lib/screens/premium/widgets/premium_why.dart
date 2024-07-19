import 'package:flutter/material.dart';
import 'package:flutter_spotify/constants/colors.dart';

class PremiumWhy extends StatelessWidget {
  const PremiumWhy({
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
              color: Color.fromARGB(255, 27, 27, 27),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Text(
                      'Why Premium?',
                      style: TextStyle(
                        fontSize: 25,
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ad-free music listening',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Download to listen offline',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Play songs in any order',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'High audio quality',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Listen with friends in real time',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'spotifyfont',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Organize listening queus',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
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
