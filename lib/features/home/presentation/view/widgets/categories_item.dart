import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/utils/app_router.dart';
import 'package:news_app/features/home/data/models/category_model.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(
          context,
        ).push(AppRouter.newsCategroryRoute, extra: categoryModel.name);
      },
      child: CircleAvatar(
        backgroundImage: AssetImage(categoryModel.image),
        backgroundColor: Colors.grey.shade300,
        radius: 50,
        child: Text(
          categoryModel.name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
