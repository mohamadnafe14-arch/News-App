import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/models/news_article.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

part 'hottest_news_state.dart';

class HottestNewsCubit extends Cubit<HottestNewsState> {
  final HomeRepo homeRepo;
  HottestNewsCubit(this.homeRepo) : super(HottestNewsInitial());
  Future<void> getHottestNews() async {
    emit(HottestNewsLoading());
    final result = await homeRepo.getHottestNews();
    result.fold(
      (l) => emit(HottestNewsError(message: l.message)),
      (r) => emit(HottestNewsLoaded(newsArticles: r)),
    );
  }
}
