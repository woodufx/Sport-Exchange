import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/product_image.dart';
import 'package:sport_exchange/helpers/mouse_dragable.dart';

class ImageCarousel extends StatelessWidget {
  ImageCarousel({super.key, required this.imageUrls});
  final _controller = PageController();
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 230,
            child: ScrollConfiguration(
              behavior: MouseDraggableScrollBehavior(),
              child: PageView(
                  padEnds: false,
                  controller: _controller,
                  children: List.generate(
                      imageUrls.length,
                      (index) => ProductImage(
                            imageUrl: imageUrls[index],
                          ))),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _controller,
          count: imageUrls.length,
          effect: const ExpandingDotsEffect(
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
    );
  }
}
