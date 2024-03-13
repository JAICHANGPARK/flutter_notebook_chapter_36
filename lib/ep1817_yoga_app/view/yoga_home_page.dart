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
              height: 54,
              child: Stack(
                children: [
                  Positioned(
                    top: 3,
                    left: 0,
                    right: 0,
                    child: Divider(
                      indent: 16,
                      thickness: 2,
                      height: 0,
                      color: Colors.grey[300]!,
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    top: 0,
                    right: 0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 32,
                              decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(8)),
                            ),
                            Gap(8),
                            Text(
                              'Yoga',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                        Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            Gap(8),
                            Text(
                              'zumba',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey[200]!,
                              ),
                            )
                          ],
                        ),
                        Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            Gap(8),
                            Text(
                              'zumba',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey[200]!,
                              ),
                            )
                          ],
                        ),
                        Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            Gap(8),
                            Text(
                              'zumba',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey[200]!,
                              ),
                            )
                          ],
                        ),
                        Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            Gap(8),
                            Text(
                              'zumba',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey[200]!,
                              ),
                            )
                          ],
                        ),
                        Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            Gap(8),
                            Text(
                              'zumba',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey[200]!,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Gap(8),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 152,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 240,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.orange[100]!,
                      ),
                      child: Column(
                        children: [
                          Text("Yoga Isolated"),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled_outlined),
                              Gap(4),
                              Text("13 mins"),
                              Gap(8),
                              Icon(Icons.local_fire_department_outlined),
                              Gap(4),
                              Text("312 kal"),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Top Workouts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    margin: EdgeInsets.only(right: 16, bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            )),
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
