import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/Dimension.dart';
class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final Color itemColor;
  final double size;
  const AppIcon({super.key, required this.icon, this.bgColor = const Color(0xfffcf4e4), this.itemColor = const Color(0xff756d54), this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: bgColor
      ),
      child: Icon(
        icon,
        color: itemColor,
        size: Dimension.size16,
      ),
    );
  }
}
