import 'package:flutter/material.dart';

class AiTravelChatPage extends StatefulWidget {
  const AiTravelChatPage({super.key});

  @override
  State<AiTravelChatPage> createState() => _AiTravelChatPageState();
}

class _AiTravelChatPageState extends State<AiTravelChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                    padding: EdgeInsets.all(8),
                  ),
                  Expanded(
                    child: Center(
                        child: Text(
                      "AI mode",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.more_horiz,
                    ),
                    padding: EdgeInsets.all(8),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
