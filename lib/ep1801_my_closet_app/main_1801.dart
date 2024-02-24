import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_36/ep1801_my_closet_app/view/my_closet_home_page.dart';

void main() {
  runApp(MyClosetApp());
}

class MyClosetApp extends StatelessWidget {
  const MyClosetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyClosetHomePage(),
    );
  }
}
