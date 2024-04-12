import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 400,
                  child: Placeholder(),
                ),
                Gap(16),
                Text("Global Odyssey Tours"),
                Text("Georgia"),
                Row(
                  children: [
                    Container(
                      child: Text("Travelling"),
                    ),
                    Container(
                      child: Text("history"),
                    ),
                    Text("Starts at 10:30"),
                  ],
                ),
                Text()
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(24),
            ),
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Just check-in",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(4),
                      SizedBox(
                        height: 40,
                        child: Stack(
                          children: [
                            Positioned(left: 0, child: CircleAvatar()),
                            Positioned(left: 20, child: CircleAvatar()),
                            Positioned(left: 40, child: CircleAvatar()),
                            Positioned(left: 60, child: CircleAvatar()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[300],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Center(
                    child: Text(
                      "Select dates",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
