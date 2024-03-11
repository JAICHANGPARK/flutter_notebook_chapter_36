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
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 64,
                width: 42,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
