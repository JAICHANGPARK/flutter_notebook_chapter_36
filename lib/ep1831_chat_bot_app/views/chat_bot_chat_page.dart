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
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back,
                    ),
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
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.more_vert,
                    ),
                  ),
                ],
              ),
              Gap(16),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(),
                          Gap(12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.1),
                                  ),
                                  child: Text(
                                    "Hello Hello Hello Hello Hello Hello Hello ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Gap(8),
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
                      ),
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
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.add),
                          hintText: "Enter your prompt",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
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
