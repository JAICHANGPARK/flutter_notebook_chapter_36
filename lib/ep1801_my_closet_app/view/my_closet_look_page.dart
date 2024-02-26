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
              color: Colors.blue,
              child: Stack(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                        ),
                      ),
                      Text("Back"),
                    ],
                  ),
                  Positioned(
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
          ],
        ),
      ),
    );
  }
}
