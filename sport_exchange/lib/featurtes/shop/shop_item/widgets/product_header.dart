import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
    required this.productName,
    required this.categoryName,
    required this.price,
    this.isLarge,
  });

  final String productName;
  final String categoryName;
  final int price;
  final bool? isLarge;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          productName.toUpperCase(),
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: isLarge != null ? 20 : 16,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          categoryName,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: isLarge != null ? 14 : 12,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          '$price₽',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: isLarge != null ? 18 : 14,
              color: AppColors.primaryOrange,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
