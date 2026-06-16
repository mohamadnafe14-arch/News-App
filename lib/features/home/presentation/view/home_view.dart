import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/app_header.dart';
import 'package:news_app/features/home/presentation/view/widgets/home_body.dart';

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
      body: HomeBody(),
    );
  }
}
