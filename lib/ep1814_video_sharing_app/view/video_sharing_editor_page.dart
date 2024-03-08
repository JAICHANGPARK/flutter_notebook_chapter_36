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
        centerTitle: true,
        actions: [TextButton(onPressed: () {}, child: Text("DONE"))],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.all(24),
            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8)),
          )),
          Container(
            height: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey[300]!, blurRadius: 4, spreadRadius: 2),
              ],
            ),
            padding: EdgeInsets.only(bottom: 24),
            child: Column(
              children: [
                Expanded(child: Placeholder()),
                Container(
                  height: 32,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
