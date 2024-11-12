import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileHomeScreen extends StatelessWidget {
  MobileHomeScreen({super.key, required});
  final HomeScreenController homeScreenController = Get.put(HomeScreenController());

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