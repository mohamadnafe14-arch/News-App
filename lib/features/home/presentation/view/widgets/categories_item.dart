import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/category_model.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(categoryModel.image),
      backgroundColor: Colors.grey.shade300,
      radius: 50,
      child: Text(
        categoryModel.name,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
