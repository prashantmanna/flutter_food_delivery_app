import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/small_text.dart';
class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;
  const IconAndText({super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        SizedBox(width: 5,),
        small_text(text: text,color: color,),
      ],
    );
  }
}
