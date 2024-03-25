import 'package:flutter/material.dart';

import 'views/chat_bot_login_page.dart';

void main() {
  runApp(AiChatBotApp());
}

class AiChatBotApp extends StatelessWidget {
  const AiChatBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatBotLoginPage(),
    );
  }
}
