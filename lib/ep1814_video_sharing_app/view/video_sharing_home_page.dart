import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VideoSharingHomePage extends StatefulWidget {
  const VideoSharingHomePage({super.key});

  @override
  State<VideoSharingHomePage> createState() => _VideoSharingHomePageState();
}

class _VideoSharingHomePageState extends State<VideoSharingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu),
                        ),
                        Text(
                          "Reelme.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 120,
                          height: 38,
                          // color: Colors.grey,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Transform.rotate(
                                  angle: -0.1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Transform.rotate(
                                  angle: 0.1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.tealAccent,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  // margin: EdgeInsets.symmetric(vertical: 1),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.emoji_events_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "TRY PRO",
                                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // Gap(8),
                  SizedBox(
                    height: 42,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search Reel, Instagram Templates...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Gap(16),
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.grey[200],
                              ),
                              Gap(4),
                              Text(
                                "Remove BG",
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.grey[200],
                              ),
                              Gap(4),
                              Text(
                                "Crop",
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.grey[200],
                              ),
                              Gap(4),
                              Text(
                                "Background",
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.grey[200],
                              ),
                              Gap(4),
                              Text(
                                "Filter",
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.grey[200],
                              ),
                              Gap(4),
                              Text(
                                "Sticker",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Gap(12),
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    height: 32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          margin: EdgeInsets.only(right: 12),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          margin: EdgeInsets.only(right: 12),
                          child: Center(
                            child: Text(
                              "Reels",
                              style: TextStyle(

                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          margin: EdgeInsets.only(right: 12),
                          child: Center(
                            child: Text(
                              "Stories",
                              style: TextStyle(

                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Story"),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See All",
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 320,
                            child: Placeholder(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Story"),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See All",
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 320,
                            child: Placeholder(),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
