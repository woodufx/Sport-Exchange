import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class ShopListScreen extends StatelessWidget {
  const ShopListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Магазин'),
    );
  }
}
