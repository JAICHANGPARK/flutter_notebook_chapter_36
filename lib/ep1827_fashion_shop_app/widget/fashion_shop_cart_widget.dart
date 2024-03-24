import 'package:flutter/material.dart';

class ShopCart {
  String? title;
  String? subtitle;
  int count;

  double price;

  ShopCart({
    this.title,
    this.subtitle,
    this.count = 0,
    this.price = 0.0,
  });
}

class FashionShopCartWidget extends StatefulWidget {
  const FashionShopCartWidget({super.key});

  @override
  State<FashionShopCartWidget> createState() => _FashionShopCartWidgetState();
}

class _FashionShopCartWidgetState extends State<FashionShopCartWidget> {

  List<ShopCart> carts = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CART"),
      ),
    );
  }
}
