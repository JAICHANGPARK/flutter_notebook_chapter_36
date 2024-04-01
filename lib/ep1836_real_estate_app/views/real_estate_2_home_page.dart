import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstate2HomePage extends StatefulWidget {
  const RealEstate2HomePage({super.key});

  @override
  State<RealEstate2HomePage> createState() => _RealEstate2HomePageState();
}

class _RealEstate2HomePageState extends State<RealEstate2HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Current Location",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 20,
                                      ),
                                      Text(
                                        "Seoul, Republic of Korea",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Badge(
                                child: Icon(
                                  Icons.notifications_none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(24),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white.withOpacity(.2),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                              ),
                              iconColor: Colors.grey,
                              hintText: "Search for your homestay",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
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
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.2),
                          ),
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
              left: 32,
              right: 32,
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: pageIndex == 0 ? Colors.white : Colors.transparent,
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.home_filled,
                          size: 30,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: pageIndex == 1 ? Colors.white : Colors.transparent,
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.list_alt,
                          size: 30,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: pageIndex == 2 ? Colors.white : Colors.transparent,
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.blue,
                        // backgroundColor: pageIndex == 3 ? Colors.white : Colors.transparent,
                      ),
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
