import 'package:flutter/material.dart';
class ColorManager{
  static Color primary = HexColor.fromHex("#ed9728");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9e9e9e");
  static Color primaryOpacity70 = HexColor.fromHex("#b3ed9728");
}
extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#', '');
    if(hexColorString.length == 6){
      hexColorString = 'ff' + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}