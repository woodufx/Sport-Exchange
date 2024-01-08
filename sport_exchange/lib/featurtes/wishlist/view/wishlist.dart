import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Вишлист'),
    );
  }
}
