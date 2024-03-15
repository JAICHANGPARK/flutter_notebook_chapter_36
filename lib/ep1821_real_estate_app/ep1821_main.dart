import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_36/ep1821_real_estate_app/view/real_estate_home_page.dart';

void main() {
  runApp(const RealEstateApp());
}

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RealEstateHomePage(),
    );
  }
}
