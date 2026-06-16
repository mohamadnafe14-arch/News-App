import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:news_app/core/constants/api_consts.dart';
import 'package:news_app/core/exceptions/dio_exception.dart';
import 'package:news_app/core/failures/failure.dart';
import 'package:news_app/core/services/api_service.dart';
import 'package:news_app/features/home/data/models/news_article.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

class HomeRepoImple implements HomeRepo {
  final ApiService apiService;

  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failure, List<NewsArticle>>> getHottestNews() async {
    try {
      final data = await apiService.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey',
      );
      log(data.toString());
      return Right(
        List<NewsArticle>.from(
          data['articles'].map((e) => NewsArticle.fromJson(e)),
        ),
      );
    } on ServerException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NewsArticle>>> getNewsByCategory({
    required String category,
  }) async {
    try {
      final data = await apiService.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$apiKey',
      );
      return Right(
        List<NewsArticle>.from(
          data['articles'].map((e) => NewsArticle.fromJson(e)),
        ),
      );
    } on ServerException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
