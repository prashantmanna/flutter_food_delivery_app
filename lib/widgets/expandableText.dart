import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/utils/Dimension.dart';
import 'package:flutter_food_delivery_app/widgets/small_text.dart';

class expandable_text extends StatefulWidget {
  final String text;

  const expandable_text({super.key, required this.text});

  @override
  State<expandable_text> createState() => _expandable_textState();
}

class _expandable_textState extends State<expandable_text> {
  late String first;

  late String second;

  bool hiddenText = true;
  double textSize = Dimension.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textSize) {
      first = widget.text.substring(0, textSize.toInt());
      second = widget.text.substring(textSize.toInt() + 1, widget.text.length);
    } else {
      first = widget.text;
      second = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: second.isEmpty
          ? small_text(text: widget.text)
          : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                small_text(
                  height: 1.8,
                    size: Dimension.font18,
                    color: Colors.black,
                    text: hiddenText ? ("$first....") : ("$first $second")),
                SizedBox(height: Dimension.height10,),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      small_text(size: Dimension.font18,text: "Show more",color: Colors.blue,),
                      Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.blue,)
                    ],
                  ),

                ),
                SizedBox(height: Dimension.height10,)
              ],
            ),
    );
  }
}
