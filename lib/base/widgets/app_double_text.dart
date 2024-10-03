import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatefulWidget {
  const AppDoubleText({super.key, required this.bigT,
  required this.smallT});
  final String bigT;
  final String smallT;

  @override
  State<AppDoubleText> createState() => _AppDoubleTextState();
}

class _AppDoubleTextState extends State<AppDoubleText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.bigT, style: AppStyles.headLineStyle2,),
        InkWell(
          onTap: (){

          },
          child: Text(widget.smallT, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          ),),
        )
      ],
    );
  }
}
