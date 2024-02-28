import 'package:flutter/material.dart';

import 'package:flutter_notebook_chapter_36/ep1801_my_closet_app/view/my_closet_look_page.dart';
import 'package:gap/gap.dart';

import 'my_closet_rack_page.dart';

class MyClosetHomePage extends StatefulWidget {
  const MyClosetHomePage({super.key});

  @override
  State<MyClosetHomePage> createState() => _MyClosetHomePageState();
}

class _MyClosetHomePageState extends State<MyClosetHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Feed"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: IndexedStack(
              index: pageIndex,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      padding: const EdgeInsets.only(left: 16),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(.2),
                            ),
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(right: 8),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(),
                                Gap(8),
                                Text(
                                  "Human",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const Gap(16),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const MyClosetLookPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 15,
                                        ),
                                        const Gap(8),
                                        const Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Dream Walker",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              Text(
                                                "@dreamwalker",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.more_horiz),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    height: 4,
                                  ),
                                  Container(
                                    height: 340,
                                    child: const Stack(
                                      children: [],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.2),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.shopping_basket,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                        Gap(4),
                                        Text(
                                          "View items in this look",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite_border,
                                        ),
                                        color: Colors.white,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.chat_bubble_outline,
                                        ),
                                        color: Colors.white,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.send_outlined,
                                        ),
                                        color: Colors.white,
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.bookmark_border_outlined,
                                        ),
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
                MyClosetRackPage(),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 16,
              right: 16,
              child: Container(
                height: 120,
                color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pageIndex = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dynamic_feed_rounded,
                              color: pageIndex == 0 ? Colors.white : Colors.grey,
                            ),
                            Text(
                              "Feed",
                              style: TextStyle(
                                color: pageIndex == 0 ? Colors.white : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bookmark,
                              color: pageIndex == 1 ? Colors.white : Colors.grey,
                            ),
                            Text(
                              "Closet",
                              style: TextStyle(
                                color: pageIndex == 1 ? Colors.white : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add_circle_outline),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            color: Colors.grey,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
