import 'package:flutter/material.dart';

class AiTravelDetailPage extends StatefulWidget {
  const AiTravelDetailPage({super.key});

  @override
  State<AiTravelDetailPage> createState() => _AiTravelDetailPageState();
}

class _AiTravelDetailPageState extends State<AiTravelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 360,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2022/10/01/01/55/gyeongbokgung-palace-7490491_1280.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 62, left: 16, right: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Detail Destination",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.bookmark_border,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Text(
                          "1/12",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            
          ],
        ),
      ),
    );
  }
}
