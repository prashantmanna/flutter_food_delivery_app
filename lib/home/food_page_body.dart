import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context,position){
        return _buildPageItem(position);
      }),
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
        height: 220,
        margin: EdgeInsets.only(left: 5,right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven?Color(0xff69c5df):Color(0xff9294cc),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/masaladosa.jpg"
            )
          )
        ),
      ),
        Align(

          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,

            margin: EdgeInsets.only(left: 40,right: 40,bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,

            ),
          ),
        )
      ],
    );
  }
}
