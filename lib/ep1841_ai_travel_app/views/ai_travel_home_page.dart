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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
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
                        shape: BoxShape.circle),
                    child: Badge(
                      child: Icon(
                        Icons.notifications_none,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200]!,
                ),
                color: Colors.grey[100],
              ),
            )
          ],
        ),
      ),
    );
  }
}
