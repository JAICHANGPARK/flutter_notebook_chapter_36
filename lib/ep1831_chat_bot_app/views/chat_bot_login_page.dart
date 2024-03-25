import 'package:flutter/material.dart';

class ChatBotLoginPage extends StatefulWidget {
  const ChatBotLoginPage({super.key});

  @override
  State<ChatBotLoginPage> createState() => _ChatBotLoginPageState();
}

class _ChatBotLoginPageState extends State<ChatBotLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Column(
              children: [
                Text("Smart Conversations"),
                Text("Smarter Connections"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
