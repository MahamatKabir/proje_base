import 'package:flutter/material.dart';
import '../components/item_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> items = [
    {
      "title": "Élément 1",
      "imageUrl": "https://via.placeholder.com/150",
      "isLiked": false
    },
    {
      "title": "Élément 2",
      "imageUrl": "https://via.placeholder.com/150",
      "isLiked": true
    },
    {
      "title": "Élément 3",
      "imageUrl": "https://via.placeholder.com/150",
      "isLiked": false
    },
  ];

  void toggleLike(int index) {
    setState(() {
      items[index]['isLiked'] = !items[index]['isLiked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste des Éléments")),
      body: ItemList(items: items, onLike: toggleLike),
    );
  }
}
