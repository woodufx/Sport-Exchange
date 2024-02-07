import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/articles/articles_list/widgets/widgets.dart';
import 'package:sport_exchange/featurtes/articles/bloc/article_bloc.dart';
import 'package:sport_exchange/featurtes/articles/models/article_model.dart';

@RoutePage()
class ArticlesListScreen extends StatefulWidget {
  const ArticlesListScreen({super.key});

  @override
  State<ArticlesListScreen> createState() => _ArticlesListScreenState();
}

class _ArticlesListScreenState extends State<ArticlesListScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ArticleBloc>(context).add(ArticleGetEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleBloc, ArticleState>(
      builder: (context, state) {
        if (state is ArticleLoaded) {
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
