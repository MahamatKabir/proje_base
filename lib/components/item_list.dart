import 'package:flutter/material.dart';
import 'item_card.dart';

class ItemList extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  final Function(int) onLike;

  const ItemList({
    Key? key,
    required this.items,
    required this.onLike,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ItemCard(
          title: item['title'],
          imageUrl: item['imageUrl'],
          isLiked: item['isLiked'],
          onLike: () => onLike(index),
        );
      },
    );
  }
}
