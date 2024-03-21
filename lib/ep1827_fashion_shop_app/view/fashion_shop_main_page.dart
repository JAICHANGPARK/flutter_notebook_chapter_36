import 'package:flutter/material.dart';

class FashionShopMainPage extends StatefulWidget {
  const FashionShopMainPage({super.key});

  @override
  State<FashionShopMainPage> createState() => _FashionShopMainPageState();
}

class _FashionShopMainPageState extends State<FashionShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text("WOMAN"),
                  Text("MAN"),
                  Text("HOME"),
                  Spacer(),
                  CircleAvatar(),
                ],
              ),
            ),
            SizedBox(
              height: 62,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
