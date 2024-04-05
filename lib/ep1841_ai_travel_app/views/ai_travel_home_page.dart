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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(),
                  const Expanded(
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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        shape: BoxShape.circle),
                    child: const Badge(
                      child: Icon(
                        Icons.notifications_none,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Gap(16),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(32),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Seoul, Republic of Korea",
                  border: InputBorder.none,
                ),
              ),
            ),
            const Gap(16),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 4,
                    ),
                    child: const Center(
                      child: Text(
                        "Asia",
                      ),
                    ),
                  );
                },
              ),
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: const Text(
                "Top Rated Destination",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(itemBuilder: (context, index) {
                return const Placeholder();
              }),
            ))
          ],
        ),
      ),
    );
  }
}
