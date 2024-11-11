import 'package:flutter/material.dart';

class CustomSpacing extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;
 const CustomSpacing({super.key, this.child, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * (height ?? 0),
      width: MediaQuery.sizeOf(context).width * (width ?? 0),
      child: child,
    );
  }
}