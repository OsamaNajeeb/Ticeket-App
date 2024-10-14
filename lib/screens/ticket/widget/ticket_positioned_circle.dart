import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool? isStupid;
  const TicketPositionedCircle({super.key, this.isStupid});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: isStupid==true?25:null,
        right: isStupid==true?null:25,
        top: 247,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: AppStyles.textColor)),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
