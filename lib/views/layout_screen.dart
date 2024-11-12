import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:codink_coop/services/logging.dart';
import 'package:codink_coop/views/desktop_view/desktop_home_screen.dart';
import 'package:codink_coop/views/mobile_view/mobile_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({super.key});
  final HomeScreenController homeScreenController = Get.put(HomeScreenController());
  static bool isMediumScreen(BuildContext context) => MediaQuery.sizeOf(context).width < 800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        Logging logging = Logging();
        logging(constraints.maxWidth);
        if(constraints.maxWidth <= homeScreenController.mobileScreenView){
          return MobileHomeScreen(
            homeScreenController: homeScreenController,
          );
        } else {
          return DesktopHomeScreen(
            homeScreenController: homeScreenController,
          );
        }
      }
    );
  }
}