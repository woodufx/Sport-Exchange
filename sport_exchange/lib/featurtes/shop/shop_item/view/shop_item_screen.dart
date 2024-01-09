import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/bottom_button.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/image_carousel.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/product_header.dart';
import 'package:sport_exchange/featurtes/shop/shop_item/widgets/size_card.dart';

@RoutePage()
class ShopItemScreen extends StatelessWidget {
  const ShopItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          ImageCarousel(
            imageUrls: const [
              'https://myreact.ru/wp-content/uploads/2021/06/1da3f6e9259d55e91816924f2dfe831f.png.webp',
              'https://myreact.ru/wp-content/uploads/2021/06/0d46f5c51e2bd9edc3237e5e8f445f9b.png.webp',
              'https://myreact.ru/wp-content/uploads/2021/06/4a770b483af537c497b6bc9be07283cc.png.webp'
            ],
          ),
          const SizedBox(height: 16),
          const ProductHeader(
            productName: 'Nike Air Force 1',
            price: 209000,
            categoryName: 'Кроссовки для бега',
            isLarge: true,
          ),
          const SizedBox(height: 18),
          Text(
              'Кроссовки Nike Air Force 1  — это визитная карточка компании Nike. Свое название кроссовки получили в честь борта номер 1 президента США. Это легендарная модель в которой впервые применилась технология Air. Кроссовки сразу же понравились профессиональным спортсменам и баскетболистам за счёт своей удобной посадки и отличной амортизации',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 30),
          Wrap(
              spacing: 16,
              runSpacing: 10,
              children:
                  List.generate(5, (index) => SizeCard(size: 'EU 4$index'))),
          const SizedBox(height: 24),
          BottomButton(
            onAddToCardPressed: () => {},
            onFavouritesPressed: () => {},
          ),
          const SizedBox(height: 40)
        ],
      ),
    );
  }
}
