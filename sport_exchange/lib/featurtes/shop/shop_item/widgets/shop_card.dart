import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/product_header.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.productName,
    required this.categoryName,
    required this.price,
    required this.imageUrls,
  }) : super(key: key);

  final String productName;
  final String categoryName;
  final int price;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {AutoRouter.of(context).pushNamed('/shop-item')},
      borderRadius: BorderRadius.circular(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
            aspectRatio: 1.64 / 2,
            child: Image.network(
              imageUrls[0],
              fit: BoxFit.cover,
              height: 200,
              width: 164,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ProductHeader(
            productName: productName, categoryName: categoryName, price: price),
      ]),
    );
  }
}
