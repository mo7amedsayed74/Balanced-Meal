import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image.asset(
        imgUrl,
        height: 100,
        width: 120,
        fit: BoxFit.fill,
      ),
    );
  }
}
