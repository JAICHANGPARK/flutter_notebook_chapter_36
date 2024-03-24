import 'package:flutter/material.dart';

class ShopCart {
  String? title;
  String? subtitle;
  int count;

  double price;

  ShopCart({
    this.title,
    this.subtitle,
    this.count = 1,
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
  void initState() {
    // TODO: implement initState
    super.initState();

    carts.add(
      ShopCart(
        title: "Brushed Leather",
        subtitle: "Black/LP/37",
        price: 1270,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CART"),
      ),
      body: Column(
        children: [
          Divider(),
          ...carts.map(
            (e) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        height: 82,
                        width: 82,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(e.title ?? "?"),
                                  Text(e.subtitle ?? "??"),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200]!,
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.remove_circle_outline),
                                    Text("${e.count}"),
                                    Icon(
                                      Icons.add_circle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("${e.price * e.count}"),
                            ],
                          ),
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
