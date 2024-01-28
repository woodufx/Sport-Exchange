import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/home/widgets/home_categories/category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Категории товаров'.toUpperCase(),
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 20,
                  )),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Category(
                  categoryName: 'Бег',
                  categoryIcon: Icons.directions_run_outlined,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Category(
                  categoryName: 'Футбол',
                  categoryIcon: Icons.sports_soccer_outlined,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Category(
                  categoryName: 'Стрит',
                  categoryIcon: Icons.signpost_outlined,
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
