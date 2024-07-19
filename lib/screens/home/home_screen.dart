import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/home/widgets/best_of_artist_list.dart';
import 'package:flutter_spotify/screens/home/widgets/new_release_card.dart';
import 'package:flutter_spotify/screens/home/widgets/picked_for_you_card.dart';
import 'package:flutter_spotify/screens/home/widgets/podcast_list.dart';
import 'package:flutter_spotify/screens/home/widgets/popular_albums_list.dart';
import 'package:flutter_spotify/screens/home/widgets/spotify_playlist.dart';
import 'widgets/navi_bar.dart';
import '../../widgets/custom_title.dart';
import 'widgets/mix_list.dart';
import 'widgets/suggestion_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: _buildBodyContent(),
      ),
    );
  }

  Widget _buildBodyContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        const NaviBar(),
        
        const SizedBox(height: 25),
        _buildCategorySelector(),
        
        const SuggestionList(),

        const SizedBox(height: 25),
        const NewReleaseCard(),
        
        const SizedBox(height: 25),
        const CustomTitle(title: "Best of artists"),
        const SizedBox(height: 16),
        const BestOfArtistList(),

        const CustomTitle(title: "Your top mixes"),
        const SizedBox(height: 16),
        const MixList(),

        const CustomTitle(title: "Picked for you"),
        const SizedBox(height: 16),
        const PickedForYouCard(),
        
        const SizedBox(height: 25),
        const CustomTitle(title: "Popular albums"),
        const SizedBox(height: 16),
        const PopularAlbumsList(),
        
        const CustomTitle(title: "Spotify Playlists"),
        const SizedBox(height: 16),
        const SpotifyPlaylist(),

        const CustomTitle(title: "New episodes"),
        const PodcastList(),
      ],
    );
  }

  Widget _buildCategorySelector() {
    return Row(
      children: [
        _buildCategoryItem('All', true),
        const SizedBox(width: 7),
        _buildCategoryItem('Music', false),
        const SizedBox(width: 7),
        _buildCategoryItem('Podcasts', false),
      ],
    );
  }

  Widget _buildCategoryItem(String title, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF1DB954) : const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'spotifyfont',
        ),
      ),
    );
  }
}
