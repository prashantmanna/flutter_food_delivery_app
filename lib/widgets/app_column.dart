import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/small_text.dart';

import '../utils/Dimension.dart';
import 'bigText.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Bigtext(
          text: text,
          size: Dimension.font26,
        ),
        SizedBox(
          height: Dimension.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 15,
                      )),
            ),
            const SizedBox(
              width: 10,
            ),
            small_text(text: "4.5"),
            const SizedBox(
              width: 10,
            ),
            small_text(text: "1287"),
            const SizedBox(
              width: 10,
            ),
            small_text(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimension.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
                icon: Icons.circle,
                text: "Normal",
                color: Colors.grey,
                iconColor: Colors.yellow),
            IconAndText(
                icon: Icons.location_on,
                text: "1.7km",
                color: Colors.grey,
                iconColor: Colors.blue),
            IconAndText(
                icon: Icons.access_time_rounded,
                text: "32 min",
                color: Colors.grey,
                iconColor: Colors.grey),
          ],
        )
      ],
    );
  }
}
