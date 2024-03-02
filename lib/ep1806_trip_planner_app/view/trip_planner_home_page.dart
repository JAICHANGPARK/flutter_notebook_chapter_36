import 'package:flutter/material.dart';

class TripPlannerHomePage extends StatefulWidget {
  const TripPlannerHomePage({super.key});

  @override
  State<TripPlannerHomePage> createState() => _TripPlannerHomePageState();
}

class _TripPlannerHomePageState extends State<TripPlannerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          radius: 18,
        ),
        title: const Text("Trip Planner"),
        centerTitle: true,
        actions: [
          CircleAvatar(
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
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text("Perfect for you "),
                        ),
                        Text("What to do"),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                          child: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text("Categories"),
                        const Text("See all"),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[400]!,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (_, __) {
                          return const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Placeholder(),
                                ),
                                Text(
                                  "Mountains",
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
