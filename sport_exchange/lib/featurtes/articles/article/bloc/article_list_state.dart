part of 'article_list_bloc.dart';

abstract class ArticleListState extends Equatable {
  const ArticleListState();

  @override
  List<Object> get props => [];
}

class ArticleListInitial extends ArticleListState {}

class ArticleListLoading extends ArticleListState {}

class ArticleListLoaded extends ArticleListState {
  final ContentModel<List<ArticleModel>> articles;

  const ArticleListLoaded(this.articles);

  @override
  List<Object> get props => super.props..add(articles);
}

class ArticleListFailure extends ArticleListState {
  final Object error;

  const ArticleListFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}
