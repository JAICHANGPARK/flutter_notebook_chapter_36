import 'package:flutter/material.dart';

import 'view/trip_planner_login_page.dart';

void main() {
  runApp(const TripPlannerApp());
}

class TripPlannerApp extends StatelessWidget {
  const TripPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TripPlannerLoginPage(),
    );
  }
}
