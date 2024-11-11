import 'package:flutter/material.dart';

Brightness getTheme(BuildContext context) {
  return MediaQuery.platformBrightnessOf(context);
}