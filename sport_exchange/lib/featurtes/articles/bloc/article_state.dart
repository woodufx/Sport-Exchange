part of 'article_bloc.dart';

abstract class ArticleState extends Equatable {
  const ArticleState();

  @override
  List<Object> get props => [];
}

class ArticleInitial extends ArticleState {}

class ArticleLoading extends ArticleState {}

class ArticleLoaded extends ArticleState {
  final ContentModel<List<ArticleModel>> articles;

  const ArticleLoaded(this.articles);

  @override
  List<Object> get props => super.props..add(articles);
}

class ArticleFailure extends ArticleState {
  final Object error;

  const ArticleFailure(this.error);

  @override
  List<Object> get props => super.props..add(error);
}
