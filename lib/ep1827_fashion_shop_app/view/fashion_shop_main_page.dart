import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/fashion_home_widget.dart';

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
            FashionHomeWidget(),
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
        currentIndex: pageIndex,
        onTap: (idx) {
          setState(() {
            pageIndex = idx;
          });
        },
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
