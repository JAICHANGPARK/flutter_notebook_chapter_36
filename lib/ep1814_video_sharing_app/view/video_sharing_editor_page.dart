import 'package:flutter/material.dart';

class VideoSharingEditorPage extends StatefulWidget {
  const VideoSharingEditorPage({super.key});

  @override
  State<VideoSharingEditorPage> createState() => _VideoSharingEditorPageState();
}

class _VideoSharingEditorPageState extends State<VideoSharingEditorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Effects"),
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [TextButton(onPressed: () {}, child: Text("DONE"))],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
