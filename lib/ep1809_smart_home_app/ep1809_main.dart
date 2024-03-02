import 'package:flutter/material.dart';

import 'view/smart_home_main_page.dart';

void main() {
  runApp(SmartHomeApp());
}


class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmartHomeMainPage(),
    );
  }
}
