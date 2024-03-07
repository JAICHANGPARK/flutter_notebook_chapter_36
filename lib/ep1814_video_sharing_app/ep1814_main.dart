import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_36/ep1814_video_sharing_app/view/video_sharing_home_page.dart';

void main() {
  runApp(VideoSharingApp());
}


class VideoSharingApp extends StatelessWidget {
  const VideoSharingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoSharingHomePage(),
    );
  }
}
