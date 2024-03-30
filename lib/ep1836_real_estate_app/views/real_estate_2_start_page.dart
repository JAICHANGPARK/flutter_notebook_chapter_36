import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RealEstate2StartPage extends StatefulWidget {
  const RealEstate2StartPage({super.key});

  @override
  State<RealEstate2StartPage> createState() => _RealEstate2StartPageState();
}

class _RealEstate2StartPageState extends State<RealEstate2StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 24,
            right: 24,
            top: 64,
            bottom: 32,
            child: Column(children: [

            ],),
          )
        ],
      ),
    );
  }
}
