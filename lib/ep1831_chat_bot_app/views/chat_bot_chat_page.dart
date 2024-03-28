import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                      child: Text(
                        "The Best Foot...",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                  ),
                ],
              ),
              Gap(16),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CircleAvatar(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text("Hello Hello Hello Hello Hello Hello Hello ",
                                style: TextStyle(
                                  color: Colors.white
                                ),),
                              ),
                              Text(
                                "09:00 AM",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 64,
                        )
                      ],
                    );
                  },
                ),
              ),
              Gap(16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.1),
                      ),
                      child: TextField(),
                    ),
                  ),
                  Gap(12),
                  CircleAvatar(
                    radius: 24,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
