import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/articles/articles_list/view/widgets/article_list_card.dart';
import 'package:sport_exchange/featurtes/articles/models/article_model.dart';

@RoutePage()
class ArticlesListScreen extends StatelessWidget {
  const ArticlesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: [
        for (int i = 0; i < 10; i++)
          Column(
            children: [
              ArticleListCard(
                  article: Article(
                      name:
                          'From Couch to 5K: A Beginner`s Guide to Starting Your Running Journey',
                      date: '23 сентября, 2023',
                      imageUrl:
                          'https://www.kant.ru/upload/img/articles/22_begdidgest.jpg',
                      categories: [],
                      text: '',
                      articleId: 1)),
              const SizedBox(height: 16),
            ],
          ),
      ],
    );
  }
}
