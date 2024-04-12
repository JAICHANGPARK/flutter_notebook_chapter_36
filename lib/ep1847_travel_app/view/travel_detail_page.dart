import 'package:flutter/material.dart';

class TravelDetailPage extends StatefulWidget {
  const TravelDetailPage({super.key});

  @override
  State<TravelDetailPage> createState() => _TravelDetailPageState();
}

class _TravelDetailPageState extends State<TravelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Odyssey"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("Just check-in"),
                      CircleAvatar(),
                    ],
                  ),
                ),
                Expanded(child: Container(child: Center(
                  child: Text("Select dates"),
                ),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
