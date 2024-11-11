import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color textColor;
  final Color? backgroundColor;
  final bool? centerText;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final String? fontFamily;
  final TextOverflow? overflow;
  const CustomText({
    super.key, required this.text, required this.fontSize, this.fontWeight, required this.textColor, this.backgroundColor, this.centerText, this.textDecoration, this.fontFamily, this.overflow, this.textAlign
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dosis(
        fontSize: fontSize,
        color: textColor,
        fontWeight: fontWeight ?? FontWeight.normal,
        backgroundColor: backgroundColor ?? Colors.transparent,
        decoration: textDecoration ?? TextDecoration.none,
      ),
      textAlign: centerText == true ? TextAlign.center : TextAlign.left,
      overflow: overflow ?? TextOverflow.visible,
    );
  }
}