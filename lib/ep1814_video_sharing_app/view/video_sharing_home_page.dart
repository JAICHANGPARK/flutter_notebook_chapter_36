import 'package:flutter/material.dart';

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
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                    Text(
                      "Reelme.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 120,
                      height: 42,
                      color: Colors.grey,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              color: Colors.tealAccent,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
