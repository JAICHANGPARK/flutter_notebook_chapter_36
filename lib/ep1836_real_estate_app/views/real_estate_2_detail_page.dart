import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            bottom: 0,
            left: 0,
            right: 0,
            top: 0,
            child: Column(
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2017/09/17/18/15/lost-places-2759275_1280.jpg",
                  fit: BoxFit.cover,
                  height: 400,
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 400, child: Column()),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                )
              ],
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
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "\$1.200",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    " / Night",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
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
