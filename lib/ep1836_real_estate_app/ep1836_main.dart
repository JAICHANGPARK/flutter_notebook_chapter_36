import 'package:flutter/material.dart';

import 'views/real_estate_2_start_page.dart';

void main() {
  runApp(RealEstateApp2());
}

class RealEstateApp2 extends StatelessWidget {
  const RealEstateApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RealEstate2StartPage(),
    );
  }
}
