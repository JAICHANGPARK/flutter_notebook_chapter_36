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
                      icon: const Icon(
                        Icons.menu,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const Expanded(
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
                      color: const Color.fromRGBO(117, 118, 88, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.search,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
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
                            const Gap(8),
                            const Text(
                              'Yoga',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                        const Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            const Gap(8),
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
                        const Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            const Gap(8),
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
                        const Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            const Gap(8),
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
                        const Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            const Gap(8),
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
                        const Gap(24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 4,
                              width: 42,
                              // color: Colors.brown,
                            ),
                            const Gap(8),
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
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.orange[50]!,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Yoga Isolated",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Gap(8),
                          const Row(
                            children: [
                              Icon(
                                Icons.access_time_filled_outlined,
                                size: 16,
                              ),
                              Gap(4),
                              Text(
                                "13 mins",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Gap(8),
                              Icon(
                                Icons.local_fire_department_outlined,
                                size: 16,
                              ),
                              Gap(4),
                              Text(
                                "312 kal",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[100]!,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Play",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(4),
                                Icon(
                                  Icons.play_arrow,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Gap(16),
            const Padding(
              padding: EdgeInsets.all(16.0),
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
              padding: const EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    margin: const EdgeInsets.only(right: 16, bottom: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200]!,
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16)),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Container(
                              child: const Stack(
                                children: [
                                  Positioned(
                                    right: 12,
                                    top: 12,
                                    child: CircleAvatar(
                                      radius: 24,
                                      child: Icon(Icons.favorite),
                                      foregroundColor: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            )),
                            const Gap(12),
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Inner Healing Therapy",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Gap(4),
                                  Text(
                                    "Just warming up",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Gap(6),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_filled_outlined,
                                        size: 16,
                                      ),
                                      Gap(4),
                                      Text(
                                        "13 mins",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Gap(8),
                                      Icon(
                                        Icons.local_fire_department_outlined,
                                        size: 16,
                                      ),
                                      Gap(4),
                                      Text(
                                        "312 kal",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          right: 16,
                          bottom: 16,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(117, 118, 88, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                Gap(6),
                                Text(
                                  "3.8",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
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
                  icon: const Icon(
                    Icons.home,
                  ),
                ),
                const CircleAvatar(
                  radius: 4,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.insert_chart_outlined,
                  ),
                ),
                const CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                  ),
                ),
                const CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_2_outlined,
                  ),
                ),
                const CircleAvatar(
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
