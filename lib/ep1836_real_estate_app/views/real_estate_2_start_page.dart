import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RealEstate2StartPage extends StatefulWidget {
  const RealEstate2StartPage({super.key});

  @override
  State<RealEstate2StartPage> createState() => _RealEstate2StartPageState();
}

class _RealEstate2StartPageState extends State<RealEstate2StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2020/09/01/15/03/building-5535464_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            top: 64,
            bottom: 32,
            child: Column(
              children: [
                Text(
                  "Discover your dream Homestay",
                ),
                Text(
                  "Enjoy the comforts of affordable rental, booking with our app",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
