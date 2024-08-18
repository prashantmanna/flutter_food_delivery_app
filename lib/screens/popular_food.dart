import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/Dimension.dart';
import 'package:flutter_food_delivery_app/widgets/app_column.dart';
import 'package:flutter_food_delivery_app/widgets/app_icon.dart';

import '../widgets/bigText.dart';
import '../widgets/icon_and_text.dart';
import '../widgets/small_text.dart';

class popular_food extends StatelessWidget {
  const popular_food({super.key});

  @override
  Widget build(BuildContext context) {
    print("curr height ${MediaQuery.of(context).size.height}");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimension.popular_food_size - 20,
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
                    Bigtext(text: "Introduce"),

                  ],
                ),
              ))
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
              padding: EdgeInsets.symmetric(vertical: Dimension.height20,horizontal: Dimension.height20),
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
                  Text("0",style: TextStyle(fontSize: Dimension.size16),),
                  const Icon(
                    Icons.add,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimension.height20,bottom: Dimension.height20,left: Dimension.width20,right: Dimension.width20),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topRight: Radius.circular(Dimension.radius20),topLeft: Radius.circular(Dimension.radius20),bottomRight: Radius.circular(Dimension.radius20),bottomLeft: Radius.circular(Dimension.radius20))
              ),
              child: Row(
                children: [
                  small_text(color: Colors.white,size: Dimension.size16,text: "\$10 | Add to Cart")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
