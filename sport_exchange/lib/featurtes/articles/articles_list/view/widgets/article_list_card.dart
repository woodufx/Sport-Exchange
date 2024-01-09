import 'package:flutter/material.dart';

class ArticleListCard extends StatelessWidget {
  const ArticleListCard({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 1.8,
                child: Image.network(
                  article.url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
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

class Article {
  final int id;
  final String name;
  final String date;
  final String text;
  final String url;

  Article(
      {required this.id,
      required this.name,
      required this.date,
      required this.text,
      required this.url});
}
