import 'package:flutter/cupertino.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: "assets/technology.jpeg",
      categoryName: "Technology",
    ),
    CategoryModel(
      image: "assets/business.jpg",
      categoryName: "Business",
    ),
    CategoryModel(
      image: "assets/entertaiment.jpg",
      categoryName: "Entertainment",
    ),
    CategoryModel(
      image: "assets/general.jpg",
      categoryName: "General",
    ),
    CategoryModel(
      image: "assets/health.jpg",
      categoryName: "Health",
    ),
    CategoryModel(
      image: "assets/science.jpg",
      categoryName: "Science",
    ),
    CategoryModel(
      image: "assets/sports.jpg",
      categoryName: "Sport",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
      ),
    );
  }
}
