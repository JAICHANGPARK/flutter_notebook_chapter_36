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
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.language,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervisor_account,
            ),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
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
