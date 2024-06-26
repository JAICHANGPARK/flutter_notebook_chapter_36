import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_36/ep1836_real_estate_app/views/real_estate_2_home_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/real_estate_2_detail_page.dart';
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
      initialRoute: "/",
      routes: {
        "/": (context) => RealEstate2HomePage(),
        "/start": (context) => RealEstate2StartPage(),
        "/detail": (context) => RealEstate2DetailPage(),
      },
    );
  }
}
