import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ShopListScreen extends StatelessWidget {
  const ShopListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Магазин'),
    );
  }
}
