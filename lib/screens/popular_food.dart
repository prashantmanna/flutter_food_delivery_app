import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/Dimension.dart';
import 'package:flutter_food_delivery_app/widgets/app_column.dart';
import 'package:flutter_food_delivery_app/widgets/app_icon.dart';
import 'package:flutter_food_delivery_app/widgets/expandableText.dart';

import '../widgets/bigText.dart';
import '../widgets/small_text.dart';

class popular_food extends StatelessWidget {
  const popular_food({super.key});

  @override
  Widget build(BuildContext context) {
    // print("curr height ${MediaQuery.of(context).size.height}");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background images
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.popular_food_size,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/biryani.jpg"))),
              )),
          //icon widget
          Positioned(
            top: Dimension.height45,
            left: Dimension.width20,
            right: Dimension.width20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //introduction
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.popular_food_size - 30,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimension.width20,
                  right: Dimension.width20,
                  top: Dimension.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimension.radius20),
                      topLeft: Radius.circular(Dimension.radius20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Paneer Dum Biryani",
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  Bigtext(text: "Food Details"),
                  SizedBox(
                    height: Dimension.height15,
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: expandable_text(
                          text: "Paneer Dum Biryani is very popular dish here."
                              "People often chooses this dish and very very delicious and tasty item in our food we offer"
                              "we find that people eat this dish very often"
                              "This paneer dum biryani is made with authentic recipe of our cuisine"
                              "Paneer Dum Biryani is very popular dish here."
                              "People often chooses this dish and very very delicious and tasty item in our food we offer"
                              "we find that people eat this dish very often"
                              "This paneer dum biryani is made with authentic recipe of our cuisine"
                              "Paneer Dum Biryani is very popular dish here."
                              "People often chooses this dish and very very delicious and tasty item in our food we offer"
                              "we find that people eat this dish very often"
                              "This paneer dum biryani is made with authentic recipe of our cuisine"
                              "Paneer Dum Biryani is very popular dish here."
                              "People often chooses this dish and very very delicious and tasty item in our food we offer"
                              "we find that people eat this dish very often"
                              "This paneer dum biryani is made with authentic recipe of our cuisine"
                              "Paneer Dum Biryani is very popular dish here."
                              "People often chooses this dish and very very delicious and tasty item in our food we offer"
                              "we find that people eat this dish very often"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.containerHeight,
        padding: EdgeInsets.only(
            top: Dimension.height30,
            bottom: Dimension.height30,
            left: Dimension.width20,
            right: Dimension.width20),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimension.radius20 * 2),
                topRight: Radius.circular(Dimension.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: Dimension.height20, horizontal: Dimension.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.remove,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: Dimension.width10 / 2,
                  ),
                  Text(
                    "0",
                    style: TextStyle(fontSize: Dimension.size16),
                  ),
                  SizedBox(
                    width: Dimension.width10 / 2,
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimension.height20,
                  bottom: Dimension.height20,
                  left: Dimension.width20,
                  right: Dimension.width20),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimension.radius20),
                      topLeft: Radius.circular(Dimension.radius20),
                      bottomRight: Radius.circular(Dimension.radius20),
                      bottomLeft: Radius.circular(Dimension.radius20))),
              child: Row(
                children: [
                  small_text(
                      color: Colors.white,
                      size: Dimension.size16,
                      text: "\$10 | Add to Cart")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
