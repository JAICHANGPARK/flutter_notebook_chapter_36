import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_36/ep1801_my_closet_app/data/closet_look_data.dart';
import 'package:gap/gap.dart';

class MyClosetLookPage extends StatefulWidget {
  const MyClosetLookPage({super.key});

  @override
  State<MyClosetLookPage> createState() => _MyClosetLookPageState();
}

class _MyClosetLookPageState extends State<MyClosetLookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 52,
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                        ),
                        color: Colors.white,
                      ),
                      const Text(
                        "Back",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    child: Center(
                      child: Text(
                        "Check the look",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ClosetLookData.items.length,
                itemBuilder: (context, index) {
                  final item = ClosetLookData.items[index];
                  return Container(
                    margin: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: const BoxDecoration(
                            color: Colors.pink,
                          ),
                        ),
                        const Gap(12),
                        Expanded(
                            child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item.title ?? "",
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_horiz,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  child: Text(
                                    "Size: ${item.size}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Gap(8),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  child: Text(
                                    "Color: ${item.color}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ))
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            const Text(
              "Choose wear color and size",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Gap(12),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text(
                  "add to cart".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Gap(12),
          ],
        ),
      ),
    );
  }
}
