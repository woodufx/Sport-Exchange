import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
        child: GNav(
          tabBackgroundColor: AppColors.secondaryOrange,
          color: AppColors.iconsGray,
          hoverColor: AppColors.backgroundGray,
          tabBorderRadius: 10.0,
          iconSize: 24.0,
          activeColor: AppColors.primaryOrange,
          rippleColor: AppColors.secondaryOrange,
          // onTabChange: (index) => {print(index)},
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          tabs: [
            GButton(icon: Icons.home_outlined),
            GButton(icon: Icons.sync_alt_outlined),
            GButton(icon: Icons.article_outlined),
            GButton(
              icon: Icons.person_outline_rounded,
            )
          ],
        ));
  }
}
