import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/error_body.dart';
import 'package:news_app/features/home/presentation/view/widgets/trending_news_item.dart';
import 'package:news_app/features/home/presentation/view/widgets/trending_news_shimmer_list.dart';
import 'package:news_app/features/home/presentation/viewmodel/hottest_news_cubit/hottest_news_cubit.dart';

class TrendingNewsList extends StatelessWidget {
  const TrendingNewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HottestNewsCubit, HottestNewsState>(
      builder: (context, state) {
        if (state is HottestNewsLoaded) {
          final newsArticles = state.newsArticles;
          return SliverList.builder(
            itemBuilder: (context, index) =>
                TrendingNewsItem(newsArticle: newsArticles[index]),
            itemCount: newsArticles.length,
          );
        } else if (state is HottestNewsError) {
          return SliverToBoxAdapter(child: ErrorBody(message: state.message));
        }
        return const TrendingNewsShimmerList();
      },
    );
  }
}
