import 'package:flutter/cupertino.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topV;
  final String botV;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnTextLayout({super.key, required this.topV,
  required this.botV, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topV, isColor: isColor,),
        const SizedBox(height: 5),
        TextStyleFourth(text: botV, isColor: isColor,),
      ],
    );
  }
}
