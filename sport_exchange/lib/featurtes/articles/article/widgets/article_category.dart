import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class ArticleCategory extends StatelessWidget {
  const ArticleCategory({super.key, required this.name});

  final int name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.secondaryOrange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(name.toString(),
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.primaryOrange)),
    );
  }
}
