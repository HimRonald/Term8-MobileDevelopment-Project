import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/library/widgets/album_list.dart';
import 'package:flutter_spotify/screens/library/widgets/artist_list.dart';
import 'package:flutter_spotify/screens/library/widgets/library_sort.dart';
import './widgets/navi_bar.dart';
import '../../widgets/category_item.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: _SliverAppBarDelegate(
            minHeight: 160,
            maxHeight: 160,
            child: Container(
              padding: EdgeInsets.only(top: 16),
              color: const Color(0xFF121212),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  const NaviBar(),
                  const SizedBox(height: 16),
                  _buildCategorySelector(),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LibrarySort(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AlbumList(),
                    ArtistList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategorySelector() {
    return const SingleChildScrollView(
      padding: EdgeInsets.only(left: 16),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryItem(title: "Playlists", isSelected: false),
          SizedBox(width: 7),
          CategoryItem(title: "Podcasts", isSelected: false),
          SizedBox(width: 7),
          CategoryItem(title: "Albums", isSelected: false),
          SizedBox(width: 7),
          CategoryItem(title: "Artists", isSelected: false),
          SizedBox(width: 7),
          CategoryItem(title: "Downloaded", isSelected: false),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}