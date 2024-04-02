import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                        const Row(
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
                        const Gap(24),
                        Container(
                          decoration: ShapeDecoration(
                            shape: const StadiumBorder(),
                            color: Colors.white.withOpacity(.2),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: const TextField(
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
                  const Gap(8),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 42,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.local_fire_department_outlined,
                                  color: Colors.white,
                                ),
                                Gap(4),
                                Text(
                                  "Trending",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(12),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.home_outlined,
                                  color: Colors.white,
                                ),
                                Gap(4),
                                Text(
                                  "House",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(12),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.apartment_rounded,
                                  color: Colors.white,
                                ),
                                Gap(4),
                                Text(
                                  "Apartment",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(12),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.apartment_rounded,
                                  color: Colors.white,
                                ),
                                Gap(4),
                                Text(
                                  "Apartment",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 400,
                            margin: const EdgeInsets.only(bottom: 24),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2021/08/23/01/03/cubic-house-6566412_1280.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.orange,
                                          ),
                                          Gap(8),
                                          Text(
                                            "5.0",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white,
                                      child: Icon(
                                        Icons.favorite,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                ClipRRect(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.2),
                                    ),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 6,
                                        sigmaY: 8,
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "The Elements",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text("\$1,200"),
                                              Text("/Night"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.white,
                                              ),
                                              Text("South Korea"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.bed),
                                              Text("2 bad"),
                                              Icon(Icons.bathtub_outlined),
                                              Text("1 bath"),
                                              Icon(Icons.expand),
                                              Text("250.00 m2"),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
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
                decoration: const ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                        foregroundColor: pageIndex == 0 ? Colors.black : Colors.white,
                        child: const Icon(
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
                        foregroundColor: pageIndex == 1 ? Colors.black : Colors.white,
                        child: const Icon(
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
                        foregroundColor: pageIndex == 2 ? Colors.black : Colors.white,
                        child: const Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
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
