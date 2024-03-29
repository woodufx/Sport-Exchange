import 'package:flutter/material.dart';

class PromoCodeBanner extends StatelessWidget {
  final String imagePath;
  final EdgeInsets padding;

  const PromoCodeBanner({
    super.key,
    required this.imagePath,
    this.padding = const EdgeInsets.only(right: 6),
  });

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
