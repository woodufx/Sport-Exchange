import 'package:flutter/material.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/shop_card.dart';

class ForYouList extends StatelessWidget {
  const ForYouList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Товары для тебя'.toUpperCase(),
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 20,
                ),
          ),
          const SizedBox(height: 16),
          const Wrap(
            direction: Axis.horizontal,
            spacing: 35.0,
            runSpacing: 16.0,
            children: [
              ShopCard(
                productName: 'AIR LEGGING SPORT',
                categoryName: 'Бег',
                price: 32000,
                imageUrl:
                    'https://static.cdek.shopping/images/shopping/9e461426eaab41f9b2d4dc739870b6e6.jpg',
              ),
              ShopCard(
                productName: 'AIR LEGGING SPORT',
                categoryName: 'Бег',
                price: 32000,
                imageUrl:
                    'https://static.cdek.shopping/images/shopping/9e461426eaab41f9b2d4dc739870b6e6.jpg',
              ),
              ShopCard(
                productName: 'AIR LEGGING SPORT',
                categoryName: 'Бег',
                price: 32000,
                imageUrl:
                    'https://static.cdek.shopping/images/shopping/9e461426eaab41f9b2d4dc739870b6e6.jpg',
              ),
            ],
          )
        ],
      ),
    );
  }
}
