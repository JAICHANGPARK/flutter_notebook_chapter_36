import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FashionShopMainPage extends StatefulWidget {
  const FashionShopMainPage({super.key});

  @override
  State<FashionShopMainPage> createState() => _FashionShopMainPageState();
}

class _FashionShopMainPageState extends State<FashionShopMainPage> {

  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IndexedStack(
          index: pageIndex,
          children: [
            Column(
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
                          padding: EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white.withOpacity(.2),
                                    child: Icon(Icons.play_arrow),
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              Gap(8),
                              Text(
                                "Previous",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Video",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "RE-NYLON",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                              ),
                              Text(
                                "COLLECTION",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                              ),
                              Gap(8),
                              Row(
                                children: [
                                  Text(
                                    "FOR HER",
                                    style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                    ),
                                  ),
                                  Gap(8),
                                  Text(
                                    "FOR HIM",
                                    style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                    ),
                                  ),
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
                              Text(
                                "NEW ARRIVAL",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
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
                                  return Container(
                                    decoration:
                                        BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                                    child: Stack(
                                      children: [
                                        if (index % 2 == 0)
                                          Positioned(
                                            top: 0,
                                            left: 24,
                                            child: Container(
                                              height: 52,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(4),
                                                ),
                                              ),
                                              child: RotatedBox(
                                                quarterTurns: -1,
                                                child: Center(
                                                  child: Text(
                                                    "NEW",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                  );
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOme",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "bag",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "bag",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "bag",
          ),
        ],
      ),
    );
  }
}
