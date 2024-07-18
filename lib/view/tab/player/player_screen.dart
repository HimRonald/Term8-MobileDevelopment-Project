import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify/constants/colors.dart';
import 'package:flutter_spotify/constants/music_model.dart';
import 'package:flutter_spotify/view/tab/player/widgets/splash.dart';
import 'package:flutter_spotify/view/tab/premium/premium_screen.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  List<MusicModel> songs = [
    MusicModel(
        songName: "Yakayo",
        artist: "Kwan",
        cover:
            'https://cdns-images.dzcdn.net/images/cover/fb6ff7c5d9e5b77eaa7cd01c3ffa429e/1900x1900-000000-80-0-0.jpg',
        path: ''),
  ];
  int currentSong = 0;
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Now Playing',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Splash()),
  ); // Pop current screen off the navigation stack
    },
  ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight,
            stops: [0.5,10.5],
            colors: [
              Colors.black,
              ColorConstants.primaryColor,
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        songs[currentSong].cover,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns the Row's children in the center
              children: [
                Text(
                  songs[currentSong].songName,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  ),
              ),               
               Icon(
                  Icons.favorite_border, // Heart outline icon
                  color: Colors.white,
                  size: 30,
              ),
              ],
            ),
            Text(
              songs[currentSong].artist,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ProgressBar(
              progressBarColor: ColorConstants.primaryColor,
              thumbColor: Colors.white,
              thumbRadius: 6.0,
              barHeight: 5.0,
              bufferedBarColor: Colors.white.withOpacity(0.24),
              baseBarColor: Colors.white.withOpacity(0.24),
              timeLabelTextStyle: TextStyle(
                  color: Colors.white.withOpacity(0.72), fontSize: 18),
              progress: Duration(milliseconds: 50000),
              buffered: Duration(milliseconds: 70000),
              total: Duration(milliseconds: 200000),
              onSeek: (duration) {
                print('User selected a new time: $duration');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: 40,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                      isPlaying = !isPlaying; // Step 3: Toggle play state
                    });
                    },
                    icon: Icon(
                    isPlaying ? Icons.pause_circle : Icons.play_arrow, // Step 2: Decide which icon to display
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                IconButton(
                    onPressed: () {
                
                    },
                    icon: Icon(
                      Icons.skip_next,
                      color: Colors.white,
                      size: 40,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
