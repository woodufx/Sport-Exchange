import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
const ProductImage({ Key? key, required this.imageUrl, this.hasBorders }) : super(key: key);
final String imageUrl;
final bool? hasBorders;

  @override
  Widget build(BuildContext context){
    return ClipRRect(
          borderRadius: hasBorders != false ? BorderRadius.circular(10) : BorderRadius.circular(0),
          child: AspectRatio(
            aspectRatio: 1.725,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        );
  }
}