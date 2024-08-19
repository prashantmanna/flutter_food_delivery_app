import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/Dimension.dart';
import 'package:flutter_food_delivery_app/widgets/app_icon.dart';
import 'package:flutter_food_delivery_app/widgets/bigText.dart';
import 'package:flutter_food_delivery_app/widgets/expandableText.dart';

import '../widgets/small_text.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimension.toolbarHeight,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimension.radius20),topRight: Radius.circular(Dimension.radius20))
                ),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5,bottom: 10),
                child: Center(child: Bigtext(size: Dimension.font26,text: "Paneer Dum Biryani",)),
              ),

            ),
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/biryani.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20),
                          child: const expandable_text(text:
                              "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine."
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine."
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine. "
                                  "Paneer Dum Biryani is a very popular dish here. "
                                  "People often choose this dish, and it is a very delicious and tasty item we offer. "
                                  "We find that people eat this dish very often. "
                                  "This paneer dum biryani is made with an authentic recipe from our cuisine."
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        ],
            ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimension.width20*2.5,
            right: Dimension.width20*2.5,
              top: Dimension.height10,
              bottom: Dimension.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove,
                bgColor: Colors.grey.shade400,
                iconSize: Dimension.size24,
                itemColor: Colors.white,),
                Bigtext(
                    color: Colors.black,
                    size: Dimension.font26,
                    text: "\$12.88 "+" X "+" O"),
                AppIcon(icon: Icons.add,
                bgColor: Colors.grey.shade400,
                iconSize: Dimension.size24,
                itemColor: Colors.white,)
              ],
            ),
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}
