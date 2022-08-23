// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:filmder_frontend/presentation/screens/home_page_screen.dart';
import 'package:filmder_frontend/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FilmderApp());
}

class FilmderApp extends StatelessWidget {
  const FilmderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filmder',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // colorScheme:
      ),
      home: const HomePage(title: 'Filmder Login Page'),
    );
  }
}
