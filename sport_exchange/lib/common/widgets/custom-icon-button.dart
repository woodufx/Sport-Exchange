import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.buttonIcon, this.onTap});
  final Icon buttonIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: AppColors.secondaryOrange.withOpacity(0.5),
        highlightColor: AppColors.secondaryOrange.withOpacity(0.8),
        onTap: onTap ?? () {},
        child: buttonIcon);
  }
}
