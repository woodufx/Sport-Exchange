import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
const ProductImage({ Key? key, required this.imageUrl }) : super(key: key);
final String imageUrl;

  @override
  Widget build(BuildContext context){
    return ClipRRect(
          borderRadius: BorderRadius.circular(10),
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