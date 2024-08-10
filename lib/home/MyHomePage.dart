import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/home/food_page_body.dart';
import 'package:flutter_food_delivery_app/widgets/bigText.dart';
import 'package:flutter_food_delivery_app/widgets/small_text.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 45,bottom: 15),
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Bigtext(text: "Pakistan",color: Colors.grey,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          small_text(text: "Mumbai",color: Colors.black54,),
                          Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey
                      ),

                    ),
                  )
                ],
              ),
            ),
            FoodPageBody(),
          ],
        ),
      ),
    );
  }
}
