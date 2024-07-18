import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/search/widgets/search_bar.dart';
import 'package:flutter_spotify/screens/search/widgets/browse.dart';
import 'package:flutter_spotify/screens/search/widgets/genre.dart'; // Check if this is necessary

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              floating: true,
              pinned: true,
              snap: false,
              expandedHeight: 140,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 42.0),
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: IconButton(
                    icon: Icon(Icons.camera_alt_outlined,
                        size: 28, color: Colors.white),
                    onPressed: () {
                      // Add your onPressed action here
                    },
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(80),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 16.0), // Add bottom padding here
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SearchInput(), // Include SearchInput widget here
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Browse All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: const [
                        BrowseCard(
                            title: 'Made For You',
                            color1: '#E02FCF',
                            color2: '#00C188'),
                        BrowseCard(
                            title: 'Charts',
                            color1: '#0A3CEC',
                            color2: '#4DD4AC'),
                        BrowseCard(
                            title: 'Discover',
                            color1: '#0A3CEC',
                            color2: '#D9DD01'),
                        BrowseCard(
                            title: 'New Release',
                            color1: '#0E31AE',
                            color2: '#DD1010'),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'Explore Genres',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: const [
                        GenreCard(
                            title: 'Pop',
                            color: Colors.pink,
                            imagePath: 'https://i.redd.it/3wfy4s7hn4881.jpg'),
                        GenreCard(
                            title: 'Hip Hop',
                            color: Colors.purple,
                            imagePath:
                                'https://mir-s3-cdn-cf.behance.net/project_modules/hd/137625112577745.60177189ef503.png'),
                        GenreCard(
                            title: 'Rock',
                            color: Colors.blueGrey,
                            imagePath:
                                'https://i.scdn.co/image/ab67616d0000b2739293c743fa542094336c5e12'),
                        GenreCard(
                            title: 'Jazz',
                            color: Colors.orange,
                            imagePath:
                                'https://i.scdn.co/image/ab6761610000e5eb71eb8f92b86868400ed4e006'),
                        GenreCard(
                          title: 'Classical',
                          color: Colors.purple,
                          imagePath:
                              'https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da847c17bf83c396f2f4f83724c4',
                        ),
                        GenreCard(
                          title: 'R&B',
                          color: Colors.red,
                          imagePath:
                              'https://i.scdn.co/image/ab67616d0000b27370dbc9f47669d120ad874ec1',
                        ),
                        GenreCard(
                          title: 'Blues',
                          color: Colors.blue,
                          imagePath:
                              'https://i.scdn.co/image/ab67616d0000b27318e2cbf099d8422460285971',
                        ),
                        GenreCard(
                          title: 'Reggae',
                          color: Colors.green,
                          imagePath:
                              'https://i.scdn.co/image/ab67706f0000000299686d24024eb667782fb166',
                        ),
                        GenreCard(
                          title: 'Country',
                          color: Colors.brown,
                          imagePath:
                              'https://i.scdn.co/image/ab67616d0000b2733a08b272f3cc61bef00901e0',
                        ),
                        GenreCard(
                          title: 'Metal',
                          color: Colors.grey,
                          imagePath:
                              'https://pbs.twimg.com/media/DzJ1g3jVsAA0au9.jpg:large',
                        ),
                        GenreCard(
                          title: 'Folk',
                          color: Colors.amber,
                          imagePath:
                              'https://i.scdn.co/image/ab67706f0000000219d25ef68a355c65361f30e1',
                        ),
                        GenreCard(
                          title: 'Soul',
                          color: Colors.deepOrange,
                          imagePath:
                              'https://i.scdn.co/image/ab67616d0000b2734b56389fb1e78b2b3ab443d8',
                        ),
                        GenreCard(
                          title: 'Latin',
                          color: Colors.teal,
                          imagePath:
                              'https://i.scdn.co/image/ab67616d0000b2732d4c93021c0617d7a6b1c39d',
                        ),
                        GenreCard(
                          title: 'Punk',
                          color: Colors.indigo,
                          imagePath:
                              'https://i.scdn.co/image/ab67616d0000b273c36e698bb83767da880ee188',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
