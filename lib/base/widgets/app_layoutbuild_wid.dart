import 'package:flutter/material.dart';

class AppLayoutbuildWid extends StatelessWidget {
  final int randomDivid;
  final double width;
  final bool? isColor;
  const AppLayoutbuildWid({super.key, required this.randomDivid,
  this.width = 3, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context,
        BoxConstraints constraint){
      // print("${(constraint.constrainWidth()/randomDivid).floor()}");
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
      children: List.generate((constraint.constrainWidth()
          / randomDivid).floor(), (index) => SizedBox(
        width: width, height: 1,
        child: DecoratedBox(decoration: BoxDecoration(
        color: isColor == null? Colors.white: Colors.grey)),
      )));
    });
  }
}
