import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/real_estate_2_start_page.dart';

void main() {
  runApp(RealEstateApp2());
}

class RealEstateApp2 extends StatelessWidget {
  const RealEstateApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: RealEstate2StartPage(),
    );
  }
}
