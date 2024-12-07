import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);

  static TextStyle textStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21.0,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
}