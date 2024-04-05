import 'package:flutter/material.dart';

import 'views/ai_travel_home_page.dart';

void main() {
  runApp(const AITravelApp());
}

class AITravelApp extends StatelessWidget {
  const AITravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AiTravelHomePage(),
    );
  }
}
