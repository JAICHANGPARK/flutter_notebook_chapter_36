import 'package:flutter/material.dart';

import 'view/fashion_shop_main_page.dart';

void main() {
  runApp(FashionShopApp());
}

class FashionShopApp extends StatelessWidget {
  const FashionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionShopMainPage(),
    );
  }
}
