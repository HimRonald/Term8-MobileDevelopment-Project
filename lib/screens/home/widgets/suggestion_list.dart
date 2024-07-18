import 'package:flutter/material.dart';
import 'suggestion_item.dart';

class SuggestionList extends StatelessWidget {
  const SuggestionList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {'image': 'assets/images/list1.png', 'title': 'Liked Songs'},
      {'image': 'assets/images/list4.png', 'title': 'Daily Drive'},
      {'image': 'assets/images/list6.png', 'title': 'Discover Weekly'},
      {'image': 'assets/images/list3.png', 'title': 'Ipséité'},
      {'image': 'assets/images/list5.png', 'title': 'Happier Than Ever'},
      {'image': 'assets/images/list2.png', 'title': 'Fine Line'},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: (200 / 56),
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return SuggestionItem(
          image: items[index]['image']!,
          title: items[index]['title']!,
        );
      },
    );
  }
}
