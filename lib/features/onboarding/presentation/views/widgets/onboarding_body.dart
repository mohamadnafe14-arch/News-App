import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/functions/dimentions.dart';
import 'package:news_app/core/utils/app_router.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: const AssetImage('assets/images/onboard.jpg'),
          width: getWidth(context),
          height: getHeight(context) / 1.9,
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.only(top: getHeight(context) / 1.7),
          height: getHeight(context) / 2,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Get the latest news from all over the world',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.homeRoute);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(250, 50),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
