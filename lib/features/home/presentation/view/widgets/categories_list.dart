import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/category_model.dart';
import 'package:news_app/features/home/presentation/view/widgets/categories_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});
  static const List<CategoryModel> categoriesList = [
    CategoryModel(name: "science", image: "assets/images/science.jpg"),
    CategoryModel(name: "business", image: "assets/images/business.jpg"),
    CategoryModel(name: "sports", image: "assets/images/sports.jpg"),
    CategoryModel(name: "technology", image: "assets/images/technology.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: CategoriesItem(categoryModel: categoriesList[index]),
        ),
      ),
    );
  }
}
