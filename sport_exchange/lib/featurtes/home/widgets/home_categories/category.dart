import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.categoryName,
    required this.categoryIcon,
    required this.onPressed,
  }) : super(key: key);

  final String categoryName;
  final IconData categoryIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
        height: 103,
        decoration: BoxDecoration(
          color: AppColors.backgroundGray,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(categoryIcon),
            const SizedBox(height: 8),
            Text(
              categoryName,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppColors.primaryOrange,
                    fontSize: 20,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
