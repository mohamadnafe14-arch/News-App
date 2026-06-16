import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/core/services/api_service.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';
import 'package:news_app/features/home/data/repos/home_repo_imple.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(dio: getIt<Dio>()));
  getIt.registerSingleton<HomeRepo>(HomeRepoImple(getIt<ApiService>()));
}
