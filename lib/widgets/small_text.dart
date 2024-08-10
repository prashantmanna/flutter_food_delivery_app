import 'package:flutter/material.dart';

class small_text extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  small_text({super.key, this.color = const Color(0xffccc7c5), required this.text,
    this.size = 12,
    this.height = 1.2
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily:"Roboto",
          fontSize: size,
          height: height
      ),
    );
  }
}
