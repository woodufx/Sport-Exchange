import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.currentRouteName})
      : super(key: key);

  final String currentRouteName;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
          surfaceTintColor: AppColors.white,
          backgroundColor: AppColors.white,
          title: Text(
            currentRouteName.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 20),
          ),
          titleSpacing: 0,
          leading: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 18,
            ),
          )),
    );
  }
}
