import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class TripPlannerHomePage extends StatefulWidget {
  const TripPlannerHomePage({super.key});

  @override
  State<TripPlannerHomePage> createState() => _TripPlannerHomePageState();
}

class _TripPlannerHomePageState extends State<TripPlannerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: const CircleAvatar(
            radius: 12,
          ),
        ),
        title: const Text("Trip Planner"),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2014/07/20/13/38/niagara-falls-397831_1280.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Text("Perfect for you ", style: TextStyle(color: Colors.white)),
                        ),
                        Spacer(),
                        Text("What to do"),
                        Gap(6),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Niagara Falls",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      "Niagara Falls (/naɪˈæɡərə/) is a group of three waterfalls at the southern end of Niagara Gorge, spanning the border between the province of Ontario in Canada and the state of New York in the United States.",
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 280,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 16, right: 24, bottom: 8),
                    child: Row(
                      children: [
                        const Text(
                          "Categories",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Spacer(),
                        const Text("See all"),
                        Gap(8),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey[400]!,
                          child: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          foregroundColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 16,
                        bottom: 16,
                        top: 0,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (_, __) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 160,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2017/02/14/03/03/ama-dablam-2064522_1280.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(12),
                                Text(
                                  "Mountains",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.language,
            ),
            label: "Explore",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.supervisor_account,
            ),
            label: "Community",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: "Favorite",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: "Settings",
          )
        ],
      ),
    );
  }
}
