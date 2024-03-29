import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
    carts.add(
      ShopCart(
        title: "Brushed Leather",
        subtitle: "Black/LP/37",
        price: 1270,
      ),
    );
    carts.add(
      ShopCart(
        title: "Brushed Leather",
        subtitle: "Black/LP/37",
        price: 1270,
      ),
    );
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
      body: SingleChildScrollView(
        child: Column(
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                          Gap(4),
                                          Text("${e.count}"),
                                          Gap(4),
                                          Icon(
                                            Icons.add_circle,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Gap(16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$${e.price * e.count}"),
                                    Text(
                                      "REMOVE",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            Container(
              height: 120,
              margin: EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                  )),
                  Gap(12),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Subtotal:"),
                      Text("\$"),
                    ],
                  ),
                  Gap(12),
                  Row(
                    children: [
                      Text("Delivery Fee:"),
                      Text("\$"),
                    ],
                  ),
                  Divider(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text("Delivery Fee:"),
                      Text("\$"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(12),
              child: Center(
                child: Text(
                  "CHECKOUT",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
