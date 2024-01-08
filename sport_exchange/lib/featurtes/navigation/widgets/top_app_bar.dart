import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_exchange/constants/app_colors.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(children: [
        SvgPicture.asset(
          'assets/sport-shoes.svg',
          height: 21.36,
        ),
        const Spacer(),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: const Icon(
            Icons.favorite_outline,
            color: AppColors.mainBlack,
            size: 20,
          ),
          onTap: () => {},
        ),
        const SizedBox(width: 16),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: AppColors.mainBlack,
            size: 20,
          ),
          onTap: () => {},
        )
      ]),
    );
  }
}
