import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(categoryModel.image),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child:  Center(
          child: Text(
            categoryModel.categoryName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
