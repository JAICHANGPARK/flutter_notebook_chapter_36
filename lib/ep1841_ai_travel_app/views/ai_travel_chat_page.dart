import 'package:flutter/material.dart';

class AiTravelChatPage extends StatefulWidget {
  const AiTravelChatPage({super.key});

  @override
  State<AiTravelChatPage> createState() => _AiTravelChatPageState();
}

class _AiTravelChatPageState extends State<AiTravelChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                  ),
                  padding: EdgeInsets.all(8),
                ),
                Expanded(
                  child: Center(child: Text("AI mode")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
