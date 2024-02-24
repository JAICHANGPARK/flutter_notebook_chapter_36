import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyClosetHomePage extends StatefulWidget {
  const MyClosetHomePage({super.key});

  @override
  State<MyClosetHomePage> createState() => _MyClosetHomePageState();
}

class _MyClosetHomePageState extends State<MyClosetHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Feed"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: const Column(
              children: [],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 16,
              right: 16,
              child: Container(
                color: Colors.blue,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dynamic_feed_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          "Feed",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: Colors.grey,
                        ),
                        Text(
                          "Closet",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 32,
                      ),
                    ),
                    Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dynamic_feed_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          "Feed",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dynamic_feed_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          "Feed",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
