import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            top: 120,
            bottom: 32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Discover your\ndream Homestay",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(16),
                Text(
                  "Enjoy the comforts of affordable rental, booking with our app",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Container(
                  height: 62,
                  decoration: BoxDecoration(
                    color: Color(0xff775cff),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
