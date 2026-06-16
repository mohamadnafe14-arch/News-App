import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_by_category_shimmer_item.dart';

class NewsByCategoryShimmerList extends StatelessWidget {
  const NewsByCategoryShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, _) {
        return const NewsByCategoryShimmerItem();
      },
    );
  }
}
