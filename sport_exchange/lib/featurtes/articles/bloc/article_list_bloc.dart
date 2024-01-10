import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/article_model.dart';
import 'package:sport_exchange/api/models/content_model.dart';

part 'article_list_event.dart';
part 'article_list_state.dart';

class ArticleListBloc extends Bloc<ArticleListEvent, ArticleListState> {
  ArticleListBloc({required this.restClient}) : super(ArticleListInitial()) {
    on<ArticleListGetEvent>(_onArticles);
  }

  FutureOr<void> _onArticles(
    ArticleListGetEvent event,
    Emitter<ArticleListState> emit,
  ) async {
    try {
      emit(ArticleListLoading());
      final articles = await restClient.getArticles();
      emit(ArticleListLoaded(articles));
    } catch (e) {
      emit(ArticleListFailure(e));
    }
  }

  final RestClient restClient;
}
