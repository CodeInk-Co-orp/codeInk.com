import 'package:flutter/material.dart';

class KColors{
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static Color lightGrey = Colors.grey.shade300;
  static const Color grey = Colors.grey;
  static Color darkGrey = Colors.grey.shade700;
  static Color greenshade300 = Colors.green.shade300;
  static const Color green = Colors.green;
  static Color greenshade700 = Colors.green.shade700;
  static Color lightGreenshade300 = Colors.lightGreen.shade300;
  static const Color lightGreen = Colors.lightGreen;
  static Color lightGreenshade700 = Colors.lightGreen.shade700;

  static LinearGradient linearGradientDown = LinearGradient(
    colors: [
      Colors.white,
      Colors.lightGreen,
      Colors.green.shade300,
    ]
  );

  static LinearGradient linearGradientUp = LinearGradient(
    colors: [
      Colors.green.shade300,
      Colors.lightGreen,
      Colors.white,
    ]
  );
}