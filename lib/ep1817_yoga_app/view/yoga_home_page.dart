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
                  ),
                ),
              ),
              Container(
                height: 64,
                width: 42,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(117, 118, 88, 1),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
