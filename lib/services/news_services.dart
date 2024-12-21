import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  getGeneralNews() async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?apiKey=bade7131034e4ec7aa4426e55fb3d6ab&country=us&category=general",
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
    print(articlesList);
  }
}
