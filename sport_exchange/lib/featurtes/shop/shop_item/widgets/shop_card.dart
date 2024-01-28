import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/api/models/product_model.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/product_header.dart';
import 'package:sport_exchange/router/router.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          {AutoRouter.of(context).push(ShopItemRoute(product: product))},
      borderRadius: BorderRadius.circular(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
            aspectRatio: 1.64 / 2,
            child: Image.network(
              product.pictureUrls[0],
              fit: BoxFit.cover,
              height: 200,
              width: 164,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ProductHeader(
            productName: product.name,
            categoryName: 'Беговые кроссовки',
            price: product.price),
      ]),
    );
  }
}
