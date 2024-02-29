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
          ),
          Positioned(
            child: Column(
              children: [
                Expanded(child: Container()),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "NAVIGATE\nTHE WORLD",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Let Trip Planner guide you",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
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
