import 'package:flutter/material.dart';

class ChatBotHomePage extends StatefulWidget {
  const ChatBotHomePage({super.key});

  @override
  State<ChatBotHomePage> createState() => _ChatBotHomePageState();
}

class _ChatBotHomePageState extends State<ChatBotHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.menu,
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Text("Wednesday."),
                      Text("13 March 2024"),
                    ],
                  )),
                  CircleAvatar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
