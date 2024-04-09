import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_36/ep1847_travel_app/view/travel_home_page.dart';


void main() {
  runApp(TravelApp());
}


class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelHomePage(),
    );
  }
}
