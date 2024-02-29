import 'package:flutter/material.dart';

class TripPlannerLoginPage extends StatelessWidget {
  const TripPlannerLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/08/03/22/25/mountain-8168060_1280.jpg",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
