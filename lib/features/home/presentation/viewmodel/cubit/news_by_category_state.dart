part of 'news_by_category_cubit.dart';

@immutable
sealed class NewsByCategoryState {}

final class NewsByCategoryInitial extends NewsByCategoryState {}

final class NewsByCategoryLoading extends NewsByCategoryState {}

final class NewsByCategoryLoaded extends NewsByCategoryState {
  final List<NewsArticle> newsArticles;
  NewsByCategoryLoaded({required this.newsArticles});
}

final class NewsByCategoryError extends NewsByCategoryState {
  final String message;
  NewsByCategoryError({required this.message});
}
