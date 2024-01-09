import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader(
      {Key? key,
      required this.productName,
      required this.categoryName,
      required this.price})
      : super(key: key);

  final String productName;
  final String categoryName;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          productName,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 16,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          categoryName,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 12,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          price.toString(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 14,
              color: AppColors.primaryOrange,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
