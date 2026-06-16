import 'package:dartz/dartz.dart';
import 'package:news_app/core/failures/failure.dart';
import 'package:news_app/features/home/data/models/news_article.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<NewsArticle>>> getHottestNews();
  Future<Either<Failure, List<NewsArticle>>> getNewsByCategory({
    required String category,
  });
}
