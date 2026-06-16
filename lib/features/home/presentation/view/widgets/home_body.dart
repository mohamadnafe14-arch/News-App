import 'package:flutter/material.dart';
import 'package:news_app/core/functions/dimentions.dart';
import 'package:news_app/features/home/presentation/view/widgets/categories_list.dart';
import 'package:news_app/features/home/presentation/view/widgets/hottest_news_list.dart';
import 'package:news_app/features/home/presentation/view/widgets/trending_news_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              'Hottest news',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: getHeight(context) / 2.4,
              child: HottestNewsList(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Text(
              'Explore',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: CategoriesList()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Text(
              'Trending news',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          TrendingNewsList(),
        ],
      ),
    );
  }
}
