import 'package:codink_coop/views/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.dosisTextTheme(),
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
      ),
    ),
  );
}