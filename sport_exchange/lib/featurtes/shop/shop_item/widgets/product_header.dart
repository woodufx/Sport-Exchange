import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    Key? key,
    required this.productName,
    required this.categoryName,
    required this.price,
    this.isLarge,
  }) : super(key: key);

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
          price.toString(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: isLarge != null ? 18 : 14,
              color: AppColors.primaryOrange,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
