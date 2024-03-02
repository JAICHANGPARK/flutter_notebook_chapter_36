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
            Row(
              children: [
                Column(
                  children: [
                    Text("Welcome home"),
                    Text("Dreamwalker!"),
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  child: Icon(
                    Icons.qr_code_scanner_rounded,
                  ),
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.notifications_active_outlined,
                  ),
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.settings_outlined,
                  ),
                ),
              ],
            ),
            Gap(16),
            SizedBox(
              height: 42,
              child: Placeholder(),
            ),
            Gap(16),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                                child: Column(
                  children: [
                    SizedBox(
                      height: 360,
                      child: Placeholder(),
                    ),
                    Gap(16),
                    GridView.builder(
                      shrinkWrap: true,
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemBuilder: (context, index) {
                          return Placeholder();
                        }),
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
