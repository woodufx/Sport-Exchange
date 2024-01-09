import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/common/widgets/image_wrapper.dart';
import 'package:sport_exchange/featurtes/articles/models/article_model.dart';
import 'package:sport_exchange/router/router.dart';

class ArticleListCard extends StatelessWidget {
  const ArticleListCard({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => {
        AutoRouter.of(context).push(ArticleRoute(
            article: Article(
                articleId: article.articleId,
                categories: ['Сила воли', 'Удобные кроссовки', 'Спорт', 'Бег'],
                date: article.date,
                name: article.name,
                text: article.text,
                imageUrl: article.imageUrl)))
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ImageWrapper(aspectRatio: 1.8, imageUrl: article.imageUrl),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.date,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 12,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(article.name,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displaySmall),
              ],
            ),
          )
        ],
      ),
    );
  }
}
