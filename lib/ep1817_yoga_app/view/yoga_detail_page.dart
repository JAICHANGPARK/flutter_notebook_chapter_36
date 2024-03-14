import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class YogaDetailsPage extends StatefulWidget {
  const YogaDetailsPage({super.key});

  @override
  State<YogaDetailsPage> createState() => _YogaDetailsPageState();
}

class _YogaDetailsPageState extends State<YogaDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
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
                        Icons.arrow_back,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              height: 220,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Gap(8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Inner Healing Therapy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16,
                                ),
                                Text(
                                  "3.8",
                                ),
                                Text(
                                  "(124 reviews)",
                                ),
                              ],
                            ),
                            Gap(12),
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
                      ),
                      Container(
                        height: 64,
                        width: 48,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(117, 118, 88, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.play_arrow,
                          ),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 64,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.bar_chart,
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Level"),
                            Text("1"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 64,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.bar_chart,
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Level"),
                            Text("1"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 64,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.bar_chart,
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: [
                            Text("Level"),
                            Text("1"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("Description"),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              maxLines: 4,
            ),
            Text("Select Your Tutor"),
            SizedBox(
              height: 64,
              child: Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 82,
                child: Row(
                  children: [
                    Expanded(child: Placeholder()),
                    Gap(12),
                    Expanded(child: Placeholder()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
