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
                    padding: const EdgeInsets.all(8.0),
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
                        Container(
                          decoration: BoxDecoration(

                          ),
                          child: TextField(),
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

                      ],
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container();
                      },
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
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
