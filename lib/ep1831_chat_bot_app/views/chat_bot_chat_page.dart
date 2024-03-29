import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_notebook_chapter_36/ep1831_chat_bot_app/model/chat_bot_model.dart';
import 'package:gap/gap.dart';

class ChatBotChatPage extends StatefulWidget {
  const ChatBotChatPage({super.key});

  @override
  State<ChatBotChatPage> createState() => _ChatBotChatPageState();
}

class _ChatBotChatPageState extends State<ChatBotChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      chatType: ChatType.system,
      text: "What can i do for you?",
    )
  ];

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
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  const Expanded(
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
                  const CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.more_vert,
                    ),
                  ),
                ],
              ),
              const Gap(24),
              Expanded(
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    final chat = chats[index];
                    if (chat.chatType == ChatType.system) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white.withOpacity(.2),
                              foregroundColor: Colors.white,
                              child: Icon(Icons.flutter_dash),
                            ),
                            const Gap(12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      "${chat.text}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  const Gap(8),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: const Text(
                                      "09:00 AM",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 64,
                            )
                          ],
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            width: 64,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    "${chat.text}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const Gap(8),
                                const Text(
                                  "09:00 AM",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Gap(16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.1),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.add),
                          iconColor: Colors.grey,
                          hintText: "Enter your prompt",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const Gap(12),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white.withOpacity(.2),
                    foregroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        setState(() {
                          chats.add(
                            ChatModel(
                              chatType: ChatType.user,
                              text: "Can you name the best football",
                            ),
                          );
                        });
                        Future.delayed(Duration(seconds: 1),(){
                          setState(() {
                            chats.add(
                              ChatModel(
                                chatType: ChatType.system,
                                text: "Sorry ",
                              ),
                            );
                          });

                        });

                      },
                    ),
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
