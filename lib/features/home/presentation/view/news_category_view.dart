import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/dependecy_injection.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_category_list.dart';
import 'package:news_app/features/home/presentation/viewmodel/cubit/news_by_category_cubit.dart';

class NewsCategoryView extends StatelessWidget {
  const NewsCategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NewsByCategoryCubit(getIt<HomeRepo>())
            ..getNewsByCategory(category: category),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            category,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: Colors.blue,
        ),
        body: NewsCategoryList(),
      ),
    );
  }
}
