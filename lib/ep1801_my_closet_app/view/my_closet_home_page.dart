import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyClosetHomePage extends StatefulWidget {
  const MyClosetHomePage({super.key});

  @override
  State<MyClosetHomePage> createState() => _MyClosetHomePageState();
}

class _MyClosetHomePageState extends State<MyClosetHomePage> {
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
            child: Column(
              children: [
                Container(
                  height: 140,
                  color: Colors.blue,
                ),
                Gap(16),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dream Walker",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "@dreamwalker",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_horiz),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              height: 360,
                              color: Colors.blue,
                              child: Stack(
                                children: [],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.shopping_basket,
                                  ),
                                  Text(
                                    "View items in this look",
                                  ),
                                ],
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
          ),
          Positioned(
              bottom: 0,
              left: 16,
              right: 16,
              child: Container(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dynamic_feed_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            "Feed",
                            style: TextStyle(
                              color: Colors.white,
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
                            Icons.bookmark,
                            color: Colors.grey,
                          ),
                          Text(
                            "Closet",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
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
