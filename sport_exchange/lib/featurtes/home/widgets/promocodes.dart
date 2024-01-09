// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/home/widgets/promocodes/promocode.dart';
import 'package:sport_exchange/helpers/mouse_dragable.dart';

class Promocodes extends StatelessWidget {
  final _controller = PageController(viewportFraction: 0.7);

  Promocodes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            child: ScrollConfiguration(
              behavior: MouseDraggableScrollBehavior(),
              child: PageView(
                padEnds: false,
                controller: _controller,
                children: const [
                  PromocodeBanner(imagePath: 'assets/first-banner.png'),
                  PromocodeBanner(imagePath: 'assets/second-banner.png'),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: ExpandingDotsEffect(
              activeDotColor: AppColors.primaryOrange,
              dotColor: AppColors.dotInactiveColor,
              dotHeight: 5,
              dotWidth: 5,
              expansionFactor: 3,
              spacing: 3,
              offset: 10,
              strokeWidth: 40,
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 {
  const Page1();
}
