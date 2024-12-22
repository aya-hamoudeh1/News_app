import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import '../models/article_model.dart';
import 'news_Tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
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