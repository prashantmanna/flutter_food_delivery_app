import 'package:flutter/material.dart';
class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final Color itemColor;
  final double size;
  final double iconSize;
  const AppIcon({super.key, required this.icon, this.bgColor = const Color(0xfffcf4e4), this.itemColor = const Color(0xff756d54), this.size = 40,
  this.iconSize = 16});

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
        size: iconSize
      ),
    );
  }
}
