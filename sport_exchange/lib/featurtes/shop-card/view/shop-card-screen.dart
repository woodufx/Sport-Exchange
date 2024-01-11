import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

@RoutePage()
class ShopCardScreen extends StatefulWidget {
  const ShopCardScreen({Key? key}) : super(key: key);

  @override
  __ShopCardScreenStateState createState() => __ShopCardScreenStateState();
}

class __ShopCardScreenStateState extends State<ShopCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
      ),
      body: const Text('Корзина'),
    );
  }
}
