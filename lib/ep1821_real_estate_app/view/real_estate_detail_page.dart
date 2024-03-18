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
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.grey[200]!,
                            child: Icon(Icons.arrow_back),
                          ),
                          Gap(12),
                          Text(
                            "Go Back",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Gap(12),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
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
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/12/08/21/21/skyscrapers-1893201_1280.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                                    child: Text(
                                      "Open for sale",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.white.withOpacity(.2),
                                    foregroundColor: Colors.white,
                                    radius: 27,
                                    child: IconButton(
                                      icon: Icon(Icons.favorite),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Text(
                                "Lakeshorre\nBlvd West",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "unknown",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )),
                      Gap(16),
                      Row(
                        children: [
                          Text(
                            "\$3,822",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_border,
                              ),
                            ),
                          ),
                          Gap(12),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Residence",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Row(
                        children: [
                          Text("4 Beds  2 Bath  1493m"),
                          Spacer(),
                          Icon(
                            Icons.apartment,
                            size: 15,
                          ),
                          Text("house")
                        ],
                      ),
                      Divider(
                        height: 32,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
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
        surfaceTintColor: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
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
