import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FashionShopMainPage extends StatefulWidget {
  const FashionShopMainPage({super.key});

  @override
  State<FashionShopMainPage> createState() => _FashionShopMainPageState();
}

class _FashionShopMainPageState extends State<FashionShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Row(
                children: [
                  Text(
                    "WOMAN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Gap(12),
                  Text(
                    "MAN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                  Gap(12),
                  Text(
                    "HOME",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    child: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Expanded(
                          child: CircleAvatar(radius: 30),
                        ),
                        Gap(8),
                        Text(
                          "BAGS",
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      height: 420,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/29/06/46/adult-1867889_1280.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 52,
                            color: Colors.blue,
                          ),
                          Text("Previous"),
                          Text("Video"),
                          Spacer(),
                          Text("RE-NYLON"),
                          Text("COLLECTION"),
                          Row(
                            children: [
                              Text("")
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("NEW ARRIVAL"),
                          Gap(16),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 10,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                            ),
                            itemBuilder: (context, index) {
                              return Placeholder();
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
