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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(

                            child: Icon(Icons.arrow_back),
                          ),
                          Text("Go Back"),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Gap(15),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 480,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://cdn.pixabay.com/photo/2016/12/08/21/21/skyscrapers-1893201_1280.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [

                          ],
                        )
                      ),
                      Row(
                        children: [
                          Text("\$3,822"),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_border,
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("Residence"),
                    ],
                  ),
                ),
              )
            ],
          ),
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