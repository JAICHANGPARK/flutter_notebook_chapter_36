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
                      const Text(
                        "NAVIGATE\nTHE WORLD",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Let Trip Planner guide you",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Gap(12),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(32),
                              topLeft: Radius.circular(32),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 24,
                                  right: 24,
                                  top: 24,
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                child: const Text(
                                  "I already have an account",
                                ),
                              ),
                              const Divider(
                                height: 42,
                              ),
                              const Text("Sign in using"),
                              const Gap(16),
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
                                  const Gap(16),
                                  Container(
                                    height: 52,
                                    width: 52,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const Gap(16),
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
