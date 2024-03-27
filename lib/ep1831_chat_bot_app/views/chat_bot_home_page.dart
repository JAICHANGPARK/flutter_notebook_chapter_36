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
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "How can I help you?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 24),
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Text(
                          "Generate New Prompt",
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 24,
                                ),
                                Gap(8),
                                Text(
                                  "Technology",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(4),
                                Text(
                                  "122 prompts",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(12),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.2),
                          ),
                        )),
                        Gap(12),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.2),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending Keywords",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Chip(
                        label: Text("Artificial Intelligence"),
                      ),
                      Chip(
                        label: Text("UI/UX"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chat History",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
