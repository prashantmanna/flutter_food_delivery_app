import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/Dimension.dart';
import 'package:flutter_food_delivery_app/widgets/app_icon.dart';

import '../widgets/bigText.dart';
import '../widgets/icon_and_text.dart';
import '../widgets/small_text.dart';

class popular_food extends StatelessWidget {
  const popular_food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [

          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.popular_food_size,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/biryani.jpg"
                        )
                    )
                ),
              )),
          Positioned(
            top: Dimension.height45,
            left: Dimension.width20,
            right: Dimension.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: Dimension.popular_food_size,
              child: Container(
                padding: EdgeInsets.only(left: Dimension.width20,
                    right: Dimension.width20,
                    top: Dimension.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius20),
                    color: Colors.white
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Bigtext(
                        text: "Masala Dosa",
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
                          SizedBox(
                            width: 10,
                          ),
                          small_text(text: "4.5"),
                          SizedBox(
                            width: 10,
                          ),
                          small_text(text: "1287"),
                          SizedBox(
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
                  ),
              ))
        ],
      ),
    );
  }
}
