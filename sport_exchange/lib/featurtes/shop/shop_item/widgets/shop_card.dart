import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.productName,
    required this.categoryName,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  final String productName;
  final String categoryName;
  final int price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
            aspectRatio: 1.64 / 2,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 200,
              width: 164,
            ),
          ),
        ),
        const SizedBox(height: 10),
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
      ]),
    );
  }
}
