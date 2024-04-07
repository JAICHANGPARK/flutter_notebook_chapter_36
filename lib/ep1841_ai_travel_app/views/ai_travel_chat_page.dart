import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                      ),
                      padding: EdgeInsets.all(8),
                    ),
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
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 24,
                ),
                child: ListView(
                  children: [
                    Text(
                      "15 February 2024",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    Gap(24),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          width: 240,
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // Expanded(
                        //   child: Container(),
                        // ),
                      ],
                    ),
                    Gap(24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 240,
                          decoration: BoxDecoration(
                            color: Colors.grey[100]!,
                          ),

                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, ",
                            style: TextStyle(
                              // color: Colors.whit
                            ),
                          ),
                        ),
                        // Expanded(
                        //   child: Container(),
                        // ),
                      ],
                    ),
                    Gap(24),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),

                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What do you want to ask ?",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Gap(12),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.mic_none,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
