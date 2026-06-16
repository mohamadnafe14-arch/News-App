import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/hottest_news_item_shimmer.dart';

class HottestNewsLoadingList extends StatelessWidget {
  const HottestNewsLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => HottestNewsItemShimmer(),
      itemCount: 5,
    );
  }
}
