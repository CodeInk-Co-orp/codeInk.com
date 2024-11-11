import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:flutter/material.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key, required this.homeScreenController});
  final HomeScreenController homeScreenController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}