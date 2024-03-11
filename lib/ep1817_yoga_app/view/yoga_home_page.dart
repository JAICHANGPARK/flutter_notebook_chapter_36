import 'package:flutter/material.dart';

class YogaHomePage extends StatefulWidget {
  const YogaHomePage({super.key});

  @override
  State<YogaHomePage> createState() => _YogaHomePageState();
}

class _YogaHomePageState extends State<YogaHomePage> {
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
                  Container(
                    height: 64,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Yoga",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(117, 118, 88, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Text("Choose Your"),
            Text("Workout Today !"),
            SizedBox(
              height: 62,
              child: Placeholder(),
            ),
            SizedBox(
              height: 140,
              child: Placeholder(),
            ),
            Text("Top Workouts"),
          ],
        ),
      ),
    );
  }
}
