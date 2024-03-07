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
                  Gap(16),
                  Container(
                    height: 42,
                    child: Placeholder(),
                  ),
                  Gap(16),
                  Container(
                    height: 100,
                    child: Placeholder(),
                  ),
                  Container(
                    height: 52,
                    child: Placeholder(),
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
