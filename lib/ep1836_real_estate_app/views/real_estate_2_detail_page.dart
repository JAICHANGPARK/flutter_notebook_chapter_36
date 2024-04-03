import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RealEstate2DetailPage extends StatefulWidget {
  const RealEstate2DetailPage({super.key});

  @override
  State<RealEstate2DetailPage> createState() => _RealEstate2DetailPageState();
}

class _RealEstate2DetailPageState extends State<RealEstate2DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [],
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 32,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(34, 34, 34, 1),
                borderRadius: BorderRadius.circular(32),
              ),
              padding: EdgeInsets.all(8),
              height: 72,
              child: Row(
                children: [
                  Text("\$1.200"),
                  Text(" / Night"),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff775cff),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
