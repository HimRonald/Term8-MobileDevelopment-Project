import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/search/widgets/artist.dart';
import 'package:flutter_spotify/screens/search/widgets/album.dart';
import 'package:flutter_spotify/screens/search/widgets/playlist.dart';
import 'package:flutter_spotify/screens/search/widgets/song.dart';

class SearchHistoryWrapper extends StatefulWidget {
  const SearchHistoryWrapper({Key? key}) : super(key: key);

  @override
  _SearchHistoryWrapperState createState() => _SearchHistoryWrapperState();
}

class _SearchHistoryWrapperState extends State<SearchHistoryWrapper> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchHistory(focusNode: _focusNode);
  }
}

class SearchHistory extends StatelessWidget {
  final FocusNode focusNode;

  const SearchHistory({
    Key? key,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildSearchAppBar(context),
      body: _buildHistoryList(),
    );
  }

  PreferredSize _buildSearchAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60), // Adjust the height as needed
      child: AppBar(
        automaticallyImplyLeading: false, // Disable the default back button
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[800], // Dark gray background
                ),
                child: Center(
                  child: TextField(
                    focusNode: focusNode,
                    style: TextStyle(
                      color: Colors.grey[300], // Lighter gray text color
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: InputBorder.none,
                      hintText: 'What do you want to listen to?',
                      hintStyle: TextStyle(
                        color: Colors.grey[500], // Lighter gray hint text
                        fontSize: 18,
                      ),
                      prefixIcon: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white, // Lighter gray icon color
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black, // Set background color of AppBar
      ),
    );
  }

  SingleChildScrollView _buildHistoryList() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Text(
            'Recent searches',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: const [
              Artist(
                  artistName: 'NewJeans',
                  artistImage:
                      'https://i.scdn.co/image/ab67616d0000b2733d98a0ae7c78a3a9babaf8af'),
              Artist(
                  artistName: 'ENO',
                  artistImage:
                      'https://khmernews.news/wp-content/uploads/2021/6/6/media/large/157755/kn23453242_(1).jpg?1622996596'),
              Album(
                  albumName: 'The Off-Season',
                  albumImage:
                      'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f',
                  artistName: 'J.Cole'),
              Album(
                  albumName: 'Everything I Know About Love',
                  albumImage:
                      'https://m.media-amazon.com/images/I/71k+Mq8hqqL._UF1000,1000_QL80_.jpg',
                  artistName: 'Laufey'),
              Playlist(
                  playlistName: 'corecore',
                  playlistImage:
                      'https://helios-i.mashable.com/imagery/articles/00hFiYgrCfD1lSSjm9ZisbB/hero-image.fill.size_1248x702.v1673104877.jpg',
                  creatorName: 'Piseth'),
              Playlist(
                  playlistName: 'This Is FKJ',
                  playlistImage:
                      'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO1x7AE9-default.jpg',
                  creatorName: 'Spotify'),
              Song(
                  songName: 'Not Like Us',
                  songImage:
                      'https://upload.wikimedia.org/wikipedia/en/6/61/Kendrick_Lamar_-_Not_Like_Us.png',
                  artistName: 'Kendrick Lamar'),
              Song(
                songName: 'នឹក | Miss - remix',
                songImage:
                    'https://i.ytimg.com/vi/RnJSpAevCek/maxresdefault.jpg',
                artistName: 'KWAN, ESCAREZ',
              ),
              Artist(
                artistImage: 'https://images.genius.com/08590b31d489263818604a7b14684d59.1000x1000x1.jpg',
                artistName: 'wave to earth',),
              Album(
                albumName: '0.1 flaws and all', 
                albumImage: 'https://upload.wikimedia.org/wikipedia/en/a/a9/Cover_of_Wave_to_Earth%27s_album_0.1_Flaws_and_All.png', 
                artistName: 'wave to earth'),
              Song(songName: 'seasons', songImage: "https://i.scdn.co/image/ab67616d0000b273c091fe6573f073f2e31b249f", artistName: 'wave to earth')
            ],
          ),
        ],
      ),
    );
  }
}
