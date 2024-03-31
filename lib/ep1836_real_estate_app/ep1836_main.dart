import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_36/ep1821_real_estate_app/view/real_estate_home_page.dart';
import 'package:flutter_notebook_chapter_36/ep1836_real_estate_app/views/real_estate_2_home_page.dart';
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
      routes: {
        "/start": (context) => RealEstate2StartPage(),
        "/": (context) => RealEstate2HomePage(),
      },
     
    );
  }
}
