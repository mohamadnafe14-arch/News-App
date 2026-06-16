import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/trending_news_item_shimmer.dart';

class TrendingNewsShimmerList extends StatelessWidget {
  const TrendingNewsShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 5,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (_, _) => const TrendingNewsItemShimmer(),
    );
  }
}
