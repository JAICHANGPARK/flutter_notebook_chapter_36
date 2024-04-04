import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                      child: Text(
                        "Hallo, Dreamwalker",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
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
            Gap(16),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200]!,
                ),
                color: Colors.grey[100],
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Seoul, Republic of Korea",
                ),
              ),
            ),
            Gap(16),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 4,
                    ),
                    child: Center(
                      child: Text(
                        "Asia",
                      ),
                    ),
                  );
                },
              ),
            ),
            Gap(16),
            Text(
              "Top Rated Destination",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(itemBuilder: (context, index) {
                return Placeholder();
              }),
            ))
          ],
        ),
      ),
    );
  }
}
