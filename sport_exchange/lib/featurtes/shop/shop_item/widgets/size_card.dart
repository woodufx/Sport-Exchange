import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class SizeCard extends StatelessWidget {
  const SizeCard(
      {super.key,
      required this.size,
      required this.isSelected,
      required this.onSizeSelect});

  final String size;
  final bool isSelected;
  final Function(String) onSizeSelect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: AppColors.pressOrangeColor.withOpacity(0.1),
      highlightColor: AppColors.highlightOrangeColor.withOpacity(0.2),
      onTap: () {
        onSizeSelect(size);
      },
      child: Container(
        constraints: const BoxConstraints(minWidth: 74, maxWidth: 90),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
              color:
                  isSelected ? AppColors.primaryOrange : AppColors.inputBorder,
              width: 1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        child: Center(
          child: Text(
            size,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: isSelected
                    ? AppColors.primaryOrange
                    : AppColors.inputBorder,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
