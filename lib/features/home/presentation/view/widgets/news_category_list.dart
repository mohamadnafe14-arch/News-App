import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/error_body.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_by_category_shimmer_list.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_category_item.dart';
import 'package:news_app/features/home/presentation/viewmodel/cubit/news_by_category_cubit.dart';

class NewsCategoryList extends StatelessWidget {
  const NewsCategoryList({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsByCategoryCubit, NewsByCategoryState>(
      builder: (context, state) {
        if (state is NewsByCategoryError) {
          return ErrorBody(message: state.message);
        } else if (state is NewsByCategoryLoading) {
          return const NewsByCategoryShimmerList();
        }
        final articles = (state as NewsByCategoryLoaded).newsArticles;
        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsCategoryItem(article: articles[index]),
          ),
        );
      },
    );
  }
}
