import 'package:flutter/material.dart';

class PromoCodeBanner extends StatelessWidget {
  final String imagePath;
  final EdgeInsets padding;

  const PromoCodeBanner({
    Key? key,
    required this.imagePath,
    this.padding = const EdgeInsets.only(right: 6),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: padding,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
            ),
          ),
        ),
      ),
    );
  }
}
