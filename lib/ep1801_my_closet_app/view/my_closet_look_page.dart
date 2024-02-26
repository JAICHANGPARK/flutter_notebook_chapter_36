import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
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
            const Divider(
              color: Colors.white,
            ),
            const Text(
              "Choose wear color and size",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Gap(12),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text(
                  "add to cart".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Gap(12),
          ],
        ),
      ),
    );
  }
}
