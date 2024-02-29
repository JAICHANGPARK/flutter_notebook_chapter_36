import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TripPlannerLoginPage extends StatelessWidget {
  const TripPlannerLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/08/03/22/25/mountain-8168060_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Column(
              children: [
                Expanded(child: Container()),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "NAVIGATE\nTHE WORLD",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Let Trip Planner guide you",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Gap(12),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(32),
                              topLeft: Radius.circular(32),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(24),
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Create new account",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "I already have an account",
                                ),
                              ),
                              Divider(),
                              Text("Sign in using"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 52,
                                    width: 52,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Gap(16),
                                  Container(
                                    height: 52,
                                    width: 52,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Gap(16),
                                  Container(
                                    height: 52,
                                    width: 52,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
