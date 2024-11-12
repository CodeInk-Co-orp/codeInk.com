import 'package:flutter/material.dart';

class KColors{
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static Color lightGrey = Colors.grey.shade300;
  static const Color grey = Colors.grey;
  static Color darkGrey = Colors.grey.shade700;
  static Color darkerGrey = Colors.grey.shade900;
  static Color greenshade300 = Colors.blue.shade300;
  static const Color blue = Colors.blue;
  static Color greenshade700 = Colors.blue.shade700;
  static Color lightBlueshade300 = Colors.lightBlue.shade300;
  static const Color lightBlue = Colors.lightBlue;
  static Color lightBlueshade700 = Colors.lightBlue.shade700;

  static LinearGradient linearGradientDown = LinearGradient(
    colors: [
      Colors.white,
      Colors.lightBlue.withOpacity(.5),
      Colors.blue.shade300,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient linearGradientUp = LinearGradient(
    colors: [
      Colors.blue.shade300,
      Colors.lightBlue,
      Colors.white,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}