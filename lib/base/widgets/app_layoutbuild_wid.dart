import 'package:flutter/material.dart';

class AppLayoutbuildWid extends StatelessWidget {
  final int randomDivid;
  const AppLayoutbuildWid({super.key, required this.randomDivid});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context,
        BoxConstraints constraint){
      print("${(constraint.constrainWidth()/randomDivid).floor()}");
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
      children: List.generate((constraint.constrainWidth()
          / randomDivid).floor(), (index) => const SizedBox(
        width: 3, height: 1,
        child: DecoratedBox(decoration: BoxDecoration(
        color: Colors.white
      )),
      )));
    });
  }
}
