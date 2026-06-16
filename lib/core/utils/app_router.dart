import 'package:go_router/go_router.dart';
import 'package:news_app/features/home/presentation/view/home_view.dart';
import 'package:news_app/features/home/presentation/view/news_category_view.dart';
import 'package:news_app/features/onboarding/presentation/views/onboarding_view.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String homeRoute = '/home';
  static const String newsDetailsRoute = '/newsDetails';
  static const String newsCategroryRoute = '/newsCategory';
  static final appRouter = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(path: homeRoute, builder: (context, state) => const HomeView()),
      GoRoute(
        path: newsCategroryRoute,
        builder: (context, state) {
          final newsCategory = state.extra as String;
          return NewsCategoryView(category: newsCategory);
        },
      ),
    ],
  );
}
