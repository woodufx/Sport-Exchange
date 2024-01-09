import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class SizeCard extends StatelessWidget {
  const SizeCard({Key? key, required this.size}) : super(key: key);

  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 74, maxWidth: 90),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.primaryOrange, width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      child: Center(
        child: Text(
          size,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.primaryOrange, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
