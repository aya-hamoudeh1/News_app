import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

import '../models/category_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.category,
    required this.categoryModel,
  });

  final String category;
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryModel.categoryName,
          style: const TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
