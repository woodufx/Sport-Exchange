import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/articles/articles_list/view/widgets/article_list_card.dart';

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
                  date: '4 сентября, 2023',
                  id: i,
                  name:
                      'The Health Benefits of Running: Boost Your Fitness with Every Step',
                  text: 'Рандомный текс',
                  url:
                      'https://www.kant.ru/upload/img/articles/22_begdidgest.jpg',
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
      ],
    );
  }
}
