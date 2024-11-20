import 'package:flutter/material.dart';
import 'package:project_debase/screens/photo_listpage.dart';
import 'screens/home_screen.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste des Éléments',
      theme: AppTheme.lightTheme,
      home: PhotoListPage(),
    );
  }
}
