import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class YogaHomePage extends StatefulWidget {
  const YogaHomePage({super.key});

  @override
  State<YogaHomePage> createState() => _YogaHomePageState();
}

class _YogaHomePageState extends State<YogaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 64,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Yoga",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(117, 118, 88, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Your",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Gap(8),
                  Text(
                    "Workout Today !",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 62,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Divider(
                      indent: 16,
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 0,
                    top: 0,
                    right: 0,
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 4,
                              color: Colors.brown,
                            ),
                            Gap(12),
                            Text(
                              'Yoga',
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              child: Placeholder(),
            ),
            Text("Top Workouts"),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                CircleAvatar(
                  radius: 4,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.insert_chart_outlined,
                  ),
                ),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none,
                  ),
                ),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_2_outlined,
                  ),
                ),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.transparent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
