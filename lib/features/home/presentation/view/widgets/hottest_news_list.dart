import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/error_body.dart';
import 'package:news_app/features/home/presentation/view/widgets/hottest_news_item.dart';
import 'package:news_app/features/home/presentation/view/widgets/hottest_news_list_shimmer.dart';
import 'package:news_app/features/home/presentation/viewmodel/cubit/hottest_news_cubit.dart';

class HottestNewsList extends StatelessWidget {
  const HottestNewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HottestNewsCubit, HottestNewsState>(
      builder: (context, state) {
        if (state is HottestNewsLoaded) {
          final newsArticles = state.newsArticles;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                HottestNewsItem(newsArticle: newsArticles[index]),
            itemCount: newsArticles.length,
          );
        } else if (state is HottestNewsError) {
          return ErrorBody(message: state.message);
        }
        return const HottestNewsListShimmer();
      },
    );
  }
}
