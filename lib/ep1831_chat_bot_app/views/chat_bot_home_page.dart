import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.menu,
                        ),
                      ),
                      Gap(12),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wednesday.",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Gap(4),
                          Text(
                            "13 March 2024",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )),
                      CircleAvatar(),
                    ],
                  ),
                  Gap(24),
                  Text(
                    "Good Morning Dream",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "How can I help you?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
