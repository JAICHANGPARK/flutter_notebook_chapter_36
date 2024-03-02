import 'package:flutter/material.dart';

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
            SizedBox(
              height: 42,
              child: Placeholder(),
            ),
            SizedBox(
              height: 360,
              child: Placeholder(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        child: Row(
          children: [

          ],
        ),
      ),
    );
  }
}
