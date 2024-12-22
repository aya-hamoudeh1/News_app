import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'news_Tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 22.0),
          child: NewsTile(
            articleModel: articles[index],
          ),
        ),
      ),
    );
  }
}
