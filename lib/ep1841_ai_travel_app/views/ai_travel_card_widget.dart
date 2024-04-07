import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AITravelCardWidget extends StatelessWidget {
  const AITravelCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Text(
                "London",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(
                  Icons.bookmark_border,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tower Bridge London",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Gap(8),
              Text(
                "Tower Bridge, located in London, ENgland, is an iconic",
              ),
              Gap(8),
              Row(
                children: [
                  Icon(
                    Icons.star_border,
                    size: 18,
                  ),
                  Text(
                    "4.8 Rating",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.timelapse,
                    size: 18,
                  ),
                  Text(
                    "6 hours",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "\$1.536",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("/persion"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
