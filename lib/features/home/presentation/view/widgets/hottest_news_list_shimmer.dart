import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/hottest_news_item_shimmer.dart';

class HottestNewsListShimmer extends StatelessWidget {
  const HottestNewsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const HottestNewsItemShimmer();
        },
      ),
    );
  }
}
