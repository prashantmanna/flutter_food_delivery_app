import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/bigText.dart';
import 'package:flutter_food_delivery_app/widgets/icon_and_text.dart';
import 'package:flutter_food_delivery_app/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  var scaleFactor = 0.8;
  var currheight = 220;
  @override
  void initState() {
    super.initState();
    pageController.addListener((){
      setState(() {
        _currPageValue=pageController.page!;});

      });

  }
  @override
  void dispose(){
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
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
    Matrix4 matrix = new Matrix4.identity();
    if(index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-scaleFactor);
      var currHeight = currheight*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currHeight, 0);
    }else if(index == _currPageValue.floor()+1){
      var currScale = scaleFactor+(_currPageValue-index+1)*(1-scaleFactor);
      var currHeight = currheight*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currHeight, 0);
    }else if(index == _currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-scaleFactor);
      var currHeight = currheight*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currHeight, 0);}
    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currheight*(1-scaleFactor)/2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
          height: 220,
          margin: EdgeInsets.only(left: 10,right: 10),
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
              height: 120,
              child: Container(
                padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Bigtext(text: "Masala Dosa"),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5,(index)=>Icon(Icons.star,color: Colors.grey,size: 15,)),
                        ),
                        SizedBox(width: 10,),
                        small_text(text: "4.5"),
                        SizedBox(width: 10,),
                        small_text(text: "1287"),
                        SizedBox(width: 10,),
                        small_text(text: "comments"),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndText(icon: Icons.circle,
                            text: "Normal", color: Colors.grey, iconColor: Colors.yellow),
                        IconAndText(icon: Icons.location_on,
                            text: "1.7km", color: Colors.grey, iconColor: Colors.blue),
                        IconAndText(icon: Icons.access_time_rounded,
                            text: "32 min", color: Colors.grey, iconColor: Colors.grey),
                      ],
                    )
                  ],
                ),
              ),
              margin: EdgeInsets.only(left: 40,right: 40,bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffe8e8e8),
                      blurRadius: 8.0,
                      offset: Offset(0,5)
                    ),BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5,0)
                    ),BoxShadow(
                        color: Colors.white,
                        offset: Offset(5,0)
                    )
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
