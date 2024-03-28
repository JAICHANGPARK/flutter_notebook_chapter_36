import 'package:flutter/material.dart';

class ChatBotChatPage extends StatefulWidget {
  const ChatBotChatPage({super.key});

  @override
  State<ChatBotChatPage> createState() => _ChatBotChatPageState();
}

class _ChatBotChatPageState extends State<ChatBotChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                  ),
                  Expanded(
                    child: Center(
                      child: Text("The Best Foot...",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white
                      ),),
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
