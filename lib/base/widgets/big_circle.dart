import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class BigCircle extends StatelessWidget {
  final bool isR;
  final bool? isColor;
  const BigCircle({super.key, required this.isR, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        width: 10,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isColor==null? AppStyles.bgColour: Colors.grey.shade200,
            borderRadius: isR == true
                ? const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))
                : const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
          ),
        ));
  }
}
