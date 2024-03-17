import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstateDetailPage extends StatefulWidget {
  const RealEstateDetailPage({super.key});

  @override
  State<RealEstateDetailPage> createState() => _RealEstateDetailPageState();
}

class _RealEstateDetailPageState extends State<RealEstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      Text("Go Back"),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.more_vert), onPressed: () {  },

                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Center(
                child: Text(
                  "Explore in VR",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )),
            Gap(12),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.black,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Center(
                child: Text(
                  "Book a Call",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
