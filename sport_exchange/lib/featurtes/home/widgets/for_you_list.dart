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
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.58,
            ),
            itemCount: 9,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, index) {
              return const ShopCard(
                productName: 'AIR LEGGING SPORT',
                categoryName: 'Бег с препятствиями',
                price: 32000,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQbNeTvvK1nAMqoyONiuaQV-8VSCDvpZfGGg&usqp=CAU',
              );
            },
          ),
        ],
      ),
    );
  }
}
