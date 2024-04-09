import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            decoration: const BoxDecoration(
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
                const Padding(
                  padding: EdgeInsets.only(top: 62, left: 16, right: 16),
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
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: const Text(
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
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Text(
                      "Seoul",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Gap(12),
                  Text(
                    "Gyeongbokgung ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Gap(8),
                  Text(
                    "Gyeongbokgung palace was one of the Joseon dynasty's palaces and main palace of the era. ",
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                      ),
                      Text("4.8 Rating"),
                      Icon(
                        Icons.timelapse,
                      ),
                      Text("6 hours"),
                    ],
                  ),
                  SizedBox(
                    height: 52,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: 72,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: 46,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: 46,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("From"),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$1.536",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(
                        text: "/person",
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: const Text(
                "Reserve",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
