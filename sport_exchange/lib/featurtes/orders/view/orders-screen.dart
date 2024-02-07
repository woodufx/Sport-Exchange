import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_exchange/constants/app_colors.dart';

@RoutePage()
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
      ),
      body: const Text('Заказы'),
    );
  }
}
