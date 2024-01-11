import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/api/models/product_model.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/wishlist/widgets/wish-list-card/wish-list-card.dart';

@RoutePage()
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          itemCount: 10,
          separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
          itemBuilder: (context, index) => (const WishListCard(
                product: ProductModel(
                    category: 4,
                    description: '',
                    id: '1',
                    pictureUrls: [
                      'https://sothebys-com.brightspotcdn.com/dims4/default/81ca619/2147483647/strip/true/crop/746x418+0+0/resize/684x383!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fdotcom%2F7f%2F10%2F1671eb5a43c4b49789d238082a6a%2F90-3.jpg',
                    ],
                    name: 'NIKE AIR FORCE 2023 DARK PURPLE COLOR',
                    price: 400000,
                    ratingNumber: 5,
                    ratingPercent: 4,
                    sizes: []),
              ))),
    );
  }
}
