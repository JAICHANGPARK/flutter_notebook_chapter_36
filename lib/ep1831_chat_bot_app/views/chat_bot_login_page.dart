import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Smart Conversations",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Smarter Connections",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Gap(16),
                Text(
                  "Unlock meaningful connections through AI-driven conversations tailoared to your needs",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gap(42),
                Container(
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
