import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/common/widgets/image_wrapper.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/articles/article/widgets/article_header.dart';
import 'package:sport_exchange/featurtes/articles/models/article_model.dart';

@RoutePage()
class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            ArticleHeader(
                name: article.name,
                date: article.date,
                categories: article.categories),
            const SizedBox(height: 16),
            ImageWrapper(
              imageUrl: article.imageUrl,
              aspectRatio: 1.66,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              article.text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
