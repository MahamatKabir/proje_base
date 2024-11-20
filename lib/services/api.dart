import 'package:project_debase/models/photos.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class PhotoService {
  Future<List<Photo>> fetchPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data
          .map((json) => Photo.fromJson(json))
          .toList()
          .sublist(0, 20); // Limiter à 20
    } else {
      throw Exception('Échec du chargement des photos');
    }
  }
}
