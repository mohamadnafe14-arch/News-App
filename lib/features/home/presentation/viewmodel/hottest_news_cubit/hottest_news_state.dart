part of 'hottest_news_cubit.dart';

@immutable
sealed class HottestNewsState {}

final class HottestNewsInitial extends HottestNewsState {}

final class HottestNewsLoading extends HottestNewsState {}

final class HottestNewsLoaded extends HottestNewsState {
  final List<NewsArticle> newsArticles;
  HottestNewsLoaded({required this.newsArticles});
}

final class HottestNewsError extends HottestNewsState {
  final String message;
  HottestNewsError({required this.message});
}
