import 'package:flutter/material.dart';

class AiTravelHomePage extends StatefulWidget {
  const AiTravelHomePage({super.key});

  @override
  State<AiTravelHomePage> createState() => _AiTravelHomePageState();
}

class _AiTravelHomePageState extends State<AiTravelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(),
                Expanded(
                  child: Center(
                    child: Text("Hallo, Dreamwalker"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                    ),
                  ),
                  child: Badge(
                    child: Icon(
                      Icons.notifications_none,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}