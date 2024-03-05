import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SmartHomeMainPage extends StatefulWidget {
  const SmartHomeMainPage({super.key});

  @override
  State<SmartHomeMainPage> createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome home"),
                      Text(
                        "Dreamwalker!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                    ),
                  ),
                  Gap(8),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.notifications_active_outlined,
                    ),
                  ),
                  Gap(8),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.settings_outlined,
                    ),
                  ),
                ],
              ),
            ),
            Gap(8),
            SizedBox(
              height: 42,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.star),
                        onPressed: () {},
                      ),
                      margin: EdgeInsets.only(right: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      child: Center(
                          child: Text(
                        "All",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      child: Center(
                          child: Text(
                        "Living room",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      child: Center(
                        child: Text(
                          "Bedrooms",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      child: Center(
                        child: Text(
                          "Bathroom",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(16),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        height: 360,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/01/07/17/48/interior-1961070_1280.jpg",
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(.1),
                              BlendMode.darken,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red[50],
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.red,
                                  ),
                                  Gap(8),
                                  Text(
                                    "Live",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Now the apartment is',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                            ),
                            Gap(12),
                            SizedBox(
                              height: 64,
                              child: Row(
                                children: [
                                  Expanded(child: Placeholder()),
                                  Expanded(child: Placeholder()),
                                ],
                              ),
                            ),
                            Gap(12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.pink[100],
                              ),
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Center(
                                child: Text(
                                  "Adjust",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                    Gap(16),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) {
                        return Placeholder();
                      },
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
