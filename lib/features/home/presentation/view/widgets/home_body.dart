import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/functions/dimentions.dart';
import 'package:news_app/core/utils/dependecy_injection.dart';
import 'package:news_app/features/home/data/models/news_article.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';
import 'package:news_app/features/home/presentation/view/widgets/categories_list.dart';
import 'package:news_app/features/home/presentation/view/widgets/hottest_news_list.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_category_item.dart';
import 'package:news_app/features/home/presentation/viewmodel/hottest_news_cubit/hottest_news_cubit.dart';

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
              child: BlocProvider(
                create: (context) =>
                    HottestNewsCubit(getIt<HomeRepo>())..getHottestNews(),
                child: HottestNewsList(),
              ),
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
          SliverToBoxAdapter(
            child: NewsCategoryItem(
              article: NewsArticle(
                source: Source(id: 'bbc-news', name: 'BBC News'),
                author: 'John Smith',
                title:
                    'Apple unveils new AI-powered features for iPhone users around the world',
                description:
                    'Apple announced a series of AI features designed to improve productivity, communication, and personalization across its devices.',
                url: 'https://www.bbc.com/news',
                urlToImage:
                    'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=1200',
                publishedAt: DateTime.now(),
                content:
                    'Apple introduced a number of artificial intelligence tools during its latest event...',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
