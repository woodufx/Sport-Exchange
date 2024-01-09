import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/featurtes/articles/article/bloc/article_list_bloc.dart';
import 'package:sport_exchange/featurtes/articles/articles_list/view/widgets/article_list_card.dart';

import '../../models/article_model.dart';

@RoutePage()
class ArticlesListScreen extends StatefulWidget {
  const ArticlesListScreen({Key? key}) : super(key: key);

  @override
  State<ArticlesListScreen> createState() => _ArticlesListScreenState();
}

class _ArticlesListScreenState extends State<ArticlesListScreen> {
  @override
  void initState() {
    BlocProvider.of<ArticleListBloc>(context).add(ArticleGetListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleListBloc, ArticleListState>(
      builder: (context, state) {
        if (state is ArticleListLoaded) {
          final articles = state.articles.content;
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: List.generate(
              articles.length,
              (index) => Column(
                children: [
                  ArticleListCard(
                      article: Article(
                          name: articles[index].name,
                          date: articles[index].createdAt,
                          imageUrl: articles[index].pictureUrl,
                          categories: [],
                          text: articles[index].text,
                          articleId: articles[index].id)),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
