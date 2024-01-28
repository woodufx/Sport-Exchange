import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class WishListCardInfo extends StatelessWidget {
  const WishListCardInfo(
      {super.key, required this.itemName, required this.price});

  final String itemName;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          itemName,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          '$price₽',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.primaryOrange),
        )
      ],
    );
  }
}
