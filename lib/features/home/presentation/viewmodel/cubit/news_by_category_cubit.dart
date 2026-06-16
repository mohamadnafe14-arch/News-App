import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/models/news_article.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

part 'news_by_category_state.dart';

class NewsByCategoryCubit extends Cubit<NewsByCategoryState> {
  final HomeRepo homeRepo;
  NewsByCategoryCubit(this.homeRepo) : super(NewsByCategoryInitial());
  Future<void> getNewsByCategory({required String category}) async {
    emit(NewsByCategoryLoading());
    final result = await homeRepo.getNewsByCategory(category: category);
    result.fold(
      (l) => emit(NewsByCategoryError(message: l.message)),
      (r) => emit(NewsByCategoryLoaded(newsArticles: r)),
    );
  }
}
