import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isLiked;
  final VoidCallback onLike;

  const ItemCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    this.isLiked = false,
    required this.onLike,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading:
            Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(title),
        trailing: IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : Colors.grey,
          ),
          onPressed: onLike,
        ),
      ),
    );
  }
}
