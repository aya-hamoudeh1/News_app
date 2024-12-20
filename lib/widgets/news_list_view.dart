import 'package:flutter/material.dart';
import 'news_Tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate:
    SliverChildBuilderDelegate(
      childCount: 10,
          (context, index) => const Padding(
            padding: EdgeInsets.only(bottom: 22.0),
            child: NewsTile(),
          ),
    ),
    );
  }
}
