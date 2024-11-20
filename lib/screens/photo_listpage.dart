import 'package:flutter/material.dart';
import 'package:project_debase/models/photos.dart';
import 'package:project_debase/screens/photo_detailpage.dart';
import 'package:project_debase/services/api.dart';

class PhotoListPage extends StatefulWidget {
  @override
  _PhotoListPageState createState() => _PhotoListPageState();
}

class _PhotoListPageState extends State<PhotoListPage> {
  final PhotoService photoService = PhotoService();
  List<Photo> photos = [];

  @override
  void initState() {
    super.initState();
    loadPhotos();
  }

  Future<void> loadPhotos() async {
    try {
      final fetchedPhotos = await photoService.fetchPhotos();
      setState(() {
        photos = fetchedPhotos;
      });
    } catch (e) {
      print('Erreur : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos'),
      ),
      body: photos.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: photos.length,
              itemBuilder: (context, index) {
                final photo = photos[index];
                return ListTile(
                  leading: Image.network(
                    photo.thumbnailUrl,
                    width: 40,
                    height: 50,
                  ),
                  title: Text(photo.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhotoDetailPage(photo: photo),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
