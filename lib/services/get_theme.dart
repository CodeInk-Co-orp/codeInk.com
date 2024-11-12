import 'package:flutter/material.dart';

bool isLightTheme(BuildContext context) {
  return MediaQuery.platformBrightnessOf(context) == Brightness.light;
}