import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  getNews();
  runApp(const NewsApp());
}

final dio = Dio();

void getNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=bade7131034e4ec7aa4426e55fb3d6ab');
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
