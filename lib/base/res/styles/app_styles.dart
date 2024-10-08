import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColour = const Color(0xFFEAEAEA);
  static Color ticketB = const Color(0xFF526799);
  static Color ticketO = const Color(0xFFF37B67);
  static Color kikiColor = const Color(0xFFd2bdb6);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle3 =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 =
  const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
}
