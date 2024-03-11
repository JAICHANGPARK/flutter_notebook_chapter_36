import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_36/ep1817_yoga_app/view/yoga_home_page.dart';

void main() {
  runApp(YogaApp());
}

class YogaApp extends StatelessWidget {
  const YogaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YogaHomePage(),
    );
  }
}
