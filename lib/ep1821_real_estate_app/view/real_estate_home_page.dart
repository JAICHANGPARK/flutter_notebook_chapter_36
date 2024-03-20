import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'real_estate_detail_page.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300]!,
                            ),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: const Text(
                            "HOMECOCO",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 26,
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_none),
                        ),
                        const CircleAvatar(
                          radius: 27,
                        ),
                      ],
                    ),
                  ),
                  const Gap(12),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100]!,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomLeft: Radius.circular(32),
                      ),
                    ),
                    margin: const EdgeInsets.only(left: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Find Your New",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Gap(4),
                              Text(
                                "apartment, House, lands and more",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_list_outlined,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: IndexedStack(
                    index: pageIndex,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 72,
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(36),
                            ),
                            child: const Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 4,
                                    ),
                                    Text(
                                      "Nearby",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.transparent,
                                    ),
                                    Text(
                                      "Recommend",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.transparent,
                                    ),
                                    Text(
                                      "Upcoming",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const RealEstateDetailPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 12),
                                      height: 320,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2016/06/10/14/34/architecture-1448221_1280.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              right: 12,
                                              top: 12,
                                              child: Container(
                                                child: const Row(
                                                  children: [
                                                    Icon(
                                                      Icons.backpack_rounded,
                                                    ),
                                                    Text(
                                                      "360",
                                                    )
                                                  ],
                                                ),
                                              )),
                                          Positioned(
                                            left: 12,
                                            right: 12,
                                            bottom: 12,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              padding: const EdgeInsets.all(16),
                                              child: const Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Lakeshouse Vivd West",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Text(
                                                        "\$1,680",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Gap(8),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.apartment,
                                                        size: 16,
                                                      ),
                                                      Gap(8),
                                                      Text("4bd 2ba 1493m"),
                                                      Spacer(),
                                                      Text(
                                                        "Month",
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: .75,
                          ),
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2016/11/18/13/18/architecture-1834420_1280.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(12),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        child: Icon(
                                          Icons.favorite_border,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(7),
                                Text(
                                  "Blvd West",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Gap(7),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.apartment_rounded,
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                    Text("2db 1ba 345m"),
                                  ],
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  )),
                ],
              ),
            ),
            Positioned(
              left: 62,
              right: 62,
              bottom: 24,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: pageIndex == 0 ? Colors.black : Colors.transparent,
                      foregroundColor: pageIndex == 0 ? Colors.white : Colors.grey,
                      child: IconButton(
                        icon: const Icon(
                          Icons.home_filled,
                        ),
                        onPressed: () {
                          setState(() {
                            pageIndex = 0;
                          });
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: pageIndex == 1 ? Colors.black : Colors.transparent,
                      foregroundColor: pageIndex == 1 ? Colors.white : Colors.grey,
                      child: IconButton(
                        icon: const Icon(
                          Icons.explore_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: pageIndex == 2 ? Colors.black : Colors.transparent,
                      foregroundColor: pageIndex == 2 ? Colors.white : Colors.grey,
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite_border,
                        ),
                        onPressed: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: pageIndex == 3 ? Colors.black : Colors.transparent,
                      foregroundColor: pageIndex == 3 ? Colors.white : Colors.grey,
                      child: IconButton(
                        icon: const Icon(
                          Icons.chat_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            pageIndex = 3;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
