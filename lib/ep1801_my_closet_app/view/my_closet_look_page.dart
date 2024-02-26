import 'package:flutter/material.dart';

class MyClosetLookPage extends StatefulWidget {
  const MyClosetLookPage({super.key});

  @override
  State<MyClosetLookPage> createState() => _MyClosetLookPageState();
}

class _MyClosetLookPageState extends State<MyClosetLookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 52,
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                        ),
                        color: Colors.white,
                      ),
                      const Text(
                        "Back",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    child: Center(
                      child: Text(
                        "Check the look",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(),
            ),
            Divider(
              color: Colors.white,
            ),
            Text(
              "Choose wear color and size",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
