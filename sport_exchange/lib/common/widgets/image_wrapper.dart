import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  const ImageWrapper(
      {Key? key, required this.aspectRatio, required this.imageUrl})
      : super(key: key);

  final double aspectRatio;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Image.network(
          imageUrl.isNotEmpty
              ? imageUrl
              : 'https://www.eclosio.ong/wp-content/uploads/2018/08/default.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
