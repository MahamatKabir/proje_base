import 'package:flutter/material.dart';
import 'package:project_debase/models/photos.dart';

class PhotoDetailPage extends StatelessWidget {
  final Photo photo;

  PhotoDetailPage({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              photo.url,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 50, color: Colors.red);
              },
            ),
            const SizedBox(height: 16),
            Text(photo.title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
