part of 'article_bloc.dart';

abstract class ArticleEvent extends Equatable {
  const ArticleEvent();

  @override
  List<Object> get props => [];
}

class ArticleGetEvent extends ArticleEvent {
  @override
  List<Object> get props => super.props..addAll([]);
}
