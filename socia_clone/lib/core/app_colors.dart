//principal /*#85148E*/ //rosa #D71B7E//azul #422793 //puro grey #F1F4FA preto #747278 /textostiulos #27252D
//icon dentro #9299A2

import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor primaryColor =
      MaterialColor(0xFF85148E, <int, Color>{
    50: Color(0xff85148e), //10%
    100: Color(0xff912c99), //20%
    200: Color(0xff5d0e63), //30%
    300: Color(0xff9d43a5), //40%
    400: Color(0xffb672bb), //50%
    500: Color(0xffc28ac7), //60%
    600: Color(0xff350839), //70%
    700: Color(0xff28062b), //80%
    800: Color(0xff1b041c), //90%
    900: Color(0xff0d020e), //100%
  });

  static const pinkShade700 = Color(0xFFD71B7E);
  static const defaultBlue = Color(0xFF422793);
  static const defaultGrey = Color(0xFFF1F4FA);
  static const defaultBlack = Color(0xFF747278);
  static const defaultBlack87 = Color(0xFF27252D);
  static const defaultGreyShade500 = Color(0xFF9299A2);
  static const defaultGreyShade400 = Color.fromARGB(255, 228, 228, 228);
  static const red = Colors.red;
  static const white = Colors.white;
  static const defaultPurpleShade = Color.fromARGB(255, 233, 203, 238);
}
