import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SmartHomeMainPage extends StatefulWidget {
  const SmartHomeMainPage({super.key});

  @override
  State<SmartHomeMainPage> createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  int pageIndex = 0;
  int tabIndex = 0;

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
                      decoration: BoxDecoration(
                        color: tabIndex == 0 ? Colors.pink : Colors.grey[100],
                        borderRadius: BorderRadius.circular(24),
                        gradient: tabIndex == 0
                            ? const LinearGradient(
                                colors: [
                                  Color.fromRGBO(220, 174, 246, 1),
                                  Color.fromRGBO(254, 181, 226, 1),
                                  Color.fromRGBO(253, 211, 188, 1),
                                ],
                              )
                            : null,
                      ),
                      margin: EdgeInsets.only(right: 12),
                      child: IconButton(
                        icon: Icon(Icons.star),
                        onPressed: () {
                          setState(() {
                            tabIndex = 0;
                          });
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tabIndex = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: tabIndex == 1 ? Colors.pink : Colors.grey[100],
                          borderRadius: BorderRadius.circular(24),
                          gradient: tabIndex == 1
                              ? const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(220, 174, 246, 1),
                                    Color.fromRGBO(254, 181, 226, 1),
                                    Color.fromRGBO(253, 211, 188, 1),
                                  ],
                                )
                              : null,
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
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tabIndex = 2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: tabIndex == 2 ? Colors.pink : Colors.grey[100],
                          borderRadius: BorderRadius.circular(24),
                          gradient: tabIndex == 2
                              ? const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(220, 174, 246, 1),
                                    Color.fromRGBO(254, 181, 226, 1),
                                    Color.fromRGBO(253, 211, 188, 1),
                                  ],
                                )
                              : null,
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
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tabIndex = 3;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: tabIndex == 3 ? Colors.pink : Colors.grey[100],
                          borderRadius: BorderRadius.circular(24),
                          gradient: tabIndex == 3
                              ? const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(220, 174, 246, 1),
                                    Color.fromRGBO(254, 181, 226, 1),
                                    Color.fromRGBO(253, 211, 188, 1),
                                  ],
                                )
                              : null,
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
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: tabIndex == 4 ? Colors.pink : Colors.grey[100],
                        borderRadius: BorderRadius.circular(24),
                        gradient: tabIndex == 4
                            ? const LinearGradient(
                                colors: [
                                  Color.fromRGBO(220, 174, 246, 1),
                                  Color.fromRGBO(254, 181, 226, 1),
                                  Color.fromRGBO(253, 211, 188, 1),
                                ],
                              )
                            : null,
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
              child: IndexedStack(
                index: tabIndex,
                children: [
                  SingleChildScrollView(
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Gap(12),
                                SizedBox(
                                  height: 64,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                          padding: EdgeInsets.all(2),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 30,
                                                backgroundColor: Colors.grey,
                                              ),
                                              Gap(8),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Temperature",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    "68",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Gap(12),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                          padding: EdgeInsets.all(2),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 30,
                                                backgroundColor: Colors.grey,
                                              ),
                                              Gap(8),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Humidity",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    "42%",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
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
                          itemCount: 5,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: .95,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey[300]!,
                                ),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 32,
                                      ),
                                      Gap(8),
                                      Text("Living room"),
                                      Gap(8),
                                      Text(
                                        "Robot cleaner",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Gap(8),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.indigo[50],
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6,
                                          vertical: 2,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.timer_outlined,
                                              size: 16,
                                            ),
                                            Gap(4),
                                            Text(
                                              "-45 min left",
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(),
                  Container(),
                  ListView(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Bedroom 01",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                ),
                              ],
                            ),
                            GridView.count(
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: .95,
                              children: List.generate(
                                  3,
                                  (index) => Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Colors.grey[300]!,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(12),
                                        child: Stack(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  radius: 32,
                                                ),
                                                Gap(8),
                                                Text("Living room"),
                                                Gap(8),
                                                Text(
                                                  "Robot cleaner",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Gap(8),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.indigo[50],
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 6,
                                                    vertical: 2,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.timer_outlined,
                                                        size: 16,
                                                      ),
                                                      Gap(4),
                                                      Text(
                                                        "-45 min left",
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                            )

                            ,

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Bedroom 02",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                ),
                              ],
                            ),
                            GridView.count(
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: .95,
                              children: List.generate(
                                  3,
                                      (index) => Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey[300]!,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(12),
                                    child: Stack(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              radius: 32,
                                            ),
                                            Gap(8),
                                            Text("Living room"),
                                            Gap(8),
                                            Text(
                                              "Robot cleaner",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Gap(8),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.indigo[50],
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 6,
                                                vertical: 2,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                    Icons.timer_outlined,
                                                    size: 16,
                                                  ),
                                                  Gap(4),
                                                  Text(
                                                    "-45 min left",
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 92,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: Icon(
                    Icons.home_filled,
                  ),
                ),
                Text("Home")
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: Icon(
                    Icons.playlist_add_outlined,
                  ),
                ),
                Text(
                  "Shop",
                )
              ],
            ),
            CircleAvatar(
              radius: 24,
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: Icon(
                    Icons.inventory_2_outlined,
                  ),
                ),
                Text(
                  "Programs",
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: Icon(
                    Icons.sentiment_satisfied,
                  ),
                ),
                Text(
                  "Profile",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
