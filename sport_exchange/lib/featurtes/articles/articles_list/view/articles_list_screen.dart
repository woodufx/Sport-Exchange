import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import '/featurtes/articles/articles_list/widgets/widgets.dart';
import 'package:sport_exchange/featurtes/articles/bloc/article_list_bloc.dart';
import 'package:sport_exchange/featurtes/articles/models/article_model.dart';

@RoutePage()
class ArticlesListScreen extends StatefulWidget {
  const ArticlesListScreen({Key? key}) : super(key: key);

  @override
  State<ArticlesListScreen> createState() => _ArticlesListScreenState();
}

class _ArticlesListScreenState extends State<ArticlesListScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ArticleListBloc>(context).add(ArticleListGetEvent());
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
                          categories: articles[index].categories,
                          text: articles[index].text,
                          articleId: articles[index].id)),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryOrange,
            ),
          );
        }
      },
    );
  }
}
