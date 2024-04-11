import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({super.key});

  @override
  State<TravelHomePage> createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
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
                  CircleAvatar(
                    radius: 24,
                  ),
                  Gap(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dreamwalker",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("@dreamwalker"),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Experience Your Summer in",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Portugal",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 72,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    spreadRadius: 4,
                    blurRadius: 8,
                  )
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Asia"),
                      Gap(4),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.orange,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Europe"),
                      Gap(4),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.transparent,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Africa"),
                      Gap(4),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.transparent,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Australia"),
                      Gap(4),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.transparent,
                      )
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
                    child: Text(
                      "Popular\nChoice places",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sunstone Ridge",
                                  ),
                                  Text(
                                    "From \$4,982",
                                  )
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward,
                                ),
                                color: Colors.black,
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favorites",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 72,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    spreadRadius: 4,
                    blurRadius: 8,
                  )
                ],
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Global",),
                      Text("Odyssey Tours",)
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
