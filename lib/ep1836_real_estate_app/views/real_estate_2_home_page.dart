import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstate2HomePage extends StatefulWidget {
  const RealEstate2HomePage({super.key});

  @override
  State<RealEstate2HomePage> createState() => _RealEstate2HomePageState();
}

class _RealEstate2HomePageState extends State<RealEstate2HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.menu,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Current Location"),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("Seoul, Republic of Korea"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              child: Badge(
                                child: Icon(
                                  Icons.notifications_none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(16),
                        Container(
                          decoration: BoxDecoration(),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search for your homestay",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Gap(16),
                  SizedBox(
                    height: 42,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.local_fire_department_outlined),
                              Text("Trending"),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.home_outlined),
                              Text("House"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 320,
                            margin: EdgeInsets.only(bottom: 16),
                            child: Placeholder(),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 24,
              left: 24,
              right: 24,
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    CircleAvatar(
                      radius: 28,
                    ),
                    CircleAvatar(
                      radius: 28,
                    ),
                    CircleAvatar(
                      radius: 28,
                    ),
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
