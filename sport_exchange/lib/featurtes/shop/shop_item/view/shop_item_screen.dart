import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_exchange/api/models/product_model.dart';
import 'package:sport_exchange/api/models/wishlist_model.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/wishlist/bloc/wishlist_bloc.dart';

import '/featurtes/shop/shop_item/widgets/widgets.dart';

@RoutePage()
class ShopItemScreen extends StatelessWidget {
  const ShopItemScreen({Key? key, required this.product}) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          ImageCarousel(
            imageUrls: product.pictureUrls,
          ),
          const SizedBox(height: 16),
          ProductHeader(
            productName: product.name,
            price: product.price,
            categoryName: 'Кроссовки для бега',
            isLarge: true,
          ),
          const SizedBox(height: 18),
          Text(product.description,
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 30),
          Wrap(
              spacing: 16,
              runSpacing: 10,
              children: product.sizes.map((e) => SizeCard(size: e)).toList()),
          const SizedBox(height: 24),
          BottomButton(
            onAddToCardPressed: () => {},
            onFavouritesPressed: () {
              BlocProvider.of<WishlistBloc>(context).add(
                WishlistUpdateEvent(
                    model: WishlistUpdateDeleteModel(productIds: [product.id])),
              );
            },
          ),
          const SizedBox(height: 40)
        ],
      ),
    );
  }
}
