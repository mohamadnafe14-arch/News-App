import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/dependecy_injection.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';
import 'package:news_app/features/home/presentation/view/widgets/app_header.dart';
import 'package:news_app/features/home/presentation/view/widgets/home_body.dart';
import 'package:news_app/features/home/presentation/viewmodel/hottest_news_cubit/hottest_news_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppHeader(),
        backgroundColor: Colors.blue,
      ),
      body: BlocProvider(
        create: (context) =>
            HottestNewsCubit(getIt<HomeRepo>())..getHottestNews(),
        child: HomeBody(),
      ),
    );
  }
}
