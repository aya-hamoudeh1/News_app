import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=bade7131034e4ec7aa4426e55fb3d6ab&category=$category",
      );
      Map<String, dynamic> jsonData = response.data;
      
      List<dynamic> articles = jsonData["articles"];
      
      List<ArticleModel> articlesList = [];
      
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          description: article["description"],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    }  catch (e) {
      return [];
    }
  }
}
