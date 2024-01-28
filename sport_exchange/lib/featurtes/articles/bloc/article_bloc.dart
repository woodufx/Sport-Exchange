import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/api/api.dart';
import 'package:sport_exchange/api/models/article_model.dart';
import 'package:sport_exchange/api/models/content_model.dart';

part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc({required this.restClient}) : super(ArticleInitial()) {
    on<ArticleGetEvent>(_onArticleGet);
  }

  FutureOr<void> _onArticleGet(
    ArticleGetEvent event,
    Emitter<ArticleState> emit,
  ) async {
    try {
      emit(ArticleLoading());
      final articles = await restClient.getArticles();
      emit(ArticleLoaded(articles));
    } catch (e) {
      emit(ArticleFailure(e));
    }
  }

  final RestClient restClient;
}
