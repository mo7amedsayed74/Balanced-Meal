import 'package:flutter/material.dart';
import 'package:balanced_meal/components/create_order_card.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.list});
  final List<Map<String,dynamic>> list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return CreateOrderCard(
            item: list[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 12),
      ),
    );
  }
}
