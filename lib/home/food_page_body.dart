import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/Dimension.dart';
import 'package:flutter_food_delivery_app/widgets/app_column.dart';
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
  var currheight = Dimension.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("current height is " + MediaQuery.of(context).size.height.toString());
    print("current width " + MediaQuery.of(context).size.width.toString());
    return Column(children: [
      //slider section
      Container(
        // color: Colors.red,
        height: Dimension.pageView,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue.toInt(),
        decorator: DotsDecorator(
          activeColor: Colors.grey,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
      //popular text
      SizedBox(height: Dimension.height30,),
      Container(
        margin: EdgeInsets.only(left: Dimension.width30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Bigtext(text: "Popular"),
            SizedBox(width: Dimension.width10,),
            Container(
              margin: EdgeInsets.only(bottom: 3),
              child: Bigtext(text: ".",color: Colors.black,),
            ),
            SizedBox(width: Dimension.width10,),
            Container(
              margin: EdgeInsets.only(bottom: 3),
              child: small_text(text: "Food Pairing",),
            )
          ],
        ),
      ),
    ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20,bottom: Dimension.height10),
                child: Row(
                  children: [
                    //images section
                    Container(
                      width:Dimension.listViewImageSize,
                      height: Dimension.listViewImageSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimension.radius20),
                          color: Colors.white38,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/vadapav.png"
                              )
                          )
                      ),


                    ),
                    Expanded(
                      child: Container(
                        height: Dimension.listViewTextSize,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(Dimension.radius20),bottomRight: Radius.circular(Dimension.radius20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimension.width10,right: Dimension.width10),
                          child: AppColumn(text: "Masala Dosa",),
                        ),
                      ),

                    )
                  ],
                ),
              );
            }),

    ]);
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - scaleFactor);
      var currHeight = currheight * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currHeight, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (_currPageValue - index + 1) * (1 - scaleFactor);
      var currHeight = currheight * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currHeight, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - scaleFactor);
      var currHeight = currheight * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currHeight, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currheight * (1 - scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimension.width10, right: Dimension.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius30),
                color: index.isEven ? Color(0xff69c5df) : Color(0xff9294cc),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/masaladosa.jpg"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.pageViewTextContainer,
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimension.height10, left: 15, right: 15),
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
              ),
              margin: EdgeInsets.only(
                  left: Dimension.width30,
                  right: Dimension.width30,
                  bottom: Dimension.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffe8e8e8),
                        blurRadius: 8.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
