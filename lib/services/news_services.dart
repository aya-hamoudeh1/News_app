import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=bade7131034e4ec7aa4426e55fb3d6ab');
    print(response);
  }

  void getSportsNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=bade7131034e4ec7aa4426e55fb3d6ab');
    print(response);
  }
}
