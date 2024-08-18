import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/Dimension.dart';

class Bigtext extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  final font;
  Bigtext({super.key, this.color = const Color(0xff332d2d), required this.text,
    this.size = 0,this.font,
  this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily:"Roboto",
        fontSize:size==0?Dimension.font20:size
      ),
    );
  }
}
