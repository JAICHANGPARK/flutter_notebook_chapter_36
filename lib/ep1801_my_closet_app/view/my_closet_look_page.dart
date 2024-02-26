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
              height: 64,
              color: Colors.blue,
            ),
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
          ],
        ),
      ),
    );
  }
}
