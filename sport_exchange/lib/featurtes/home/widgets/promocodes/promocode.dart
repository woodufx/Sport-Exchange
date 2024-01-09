import 'package:flutter/material.dart';

class PromoCodeBanner extends StatelessWidget {
  final String imagePath;
  final bool isFirst;

  const PromoCodeBanner({
    Key? key,
    required this.imagePath,
    required this.isFirst,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: isFirst
            ? const EdgeInsets.fromLTRB(24, 0, 8, 0)
            : const EdgeInsets.only(right: 24),
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
