import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.black,
                  Colors.black,
                  Colors.black
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    iconTheme: IconThemeData(color: Colors.white),
                    actions: [
                      IconButton(
                        icon: Icon(Icons.more_vert, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF62E58C),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        'M',
                        style: TextStyle(
                          color: Color(0xFF000100),
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white, // Text color
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildInfoColumn('18', 'Playlists'),
                      SizedBox(width: 40),
                      _buildInfoColumn('5', 'Followers'),
                      SizedBox(width: 40),
                      _buildInfoColumn('4', 'Following'),
                    ],
                  ),
                  SizedBox(height: 20),
                  _buildPlaylists(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _buildInfoColumn(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildPlaylists() {
    return Column(
      children: [
        _buildPlaylistItem('My Playlist #1', 'assets/images/playlist1.PNG', 7),
        _buildPlaylistItem('My Playlist #2', 'assets/images/playlist2.PNG', 4),
        _buildPlaylistItem('My Playlist #3', 'assets/images/playlist3.PNG', 5),
        TextButton(
          onPressed: () {},
          child:
              Text('See all playlists', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  Widget _buildPlaylistItem(String title, String imagePath, int likes) {
    return ListTile(
      leading: Image.asset(imagePath, width: 40, height: 40),
      title: Text(title, style: TextStyle(color: Colors.white)),
      trailing: Text('$likes likes', style: TextStyle(color: Colors.white)),
    );
  }
}
