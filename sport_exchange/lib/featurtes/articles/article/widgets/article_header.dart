import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/articles/article/widgets/article_category.dart';

class ArticleHeader extends StatelessWidget {
  const ArticleHeader(
      {Key? key,
      required this.name,
      required this.date,
      required this.categories})
      : super(key: key);

  final String name;
  final String date;
  final List<int> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 170),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            date,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          Wrap(
              spacing: 16,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: List.generate(
                  categories.length,
                  (index) => ArticleCategory(
                        name: categories[index],
                      ))),
        ],
      ),
    );
  }
}
