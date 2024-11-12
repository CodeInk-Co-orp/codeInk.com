import 'package:codink_coop/services/logging.dart';
import 'package:codink_coop/views/desktop_view/desktop_home_screen.dart';
import 'package:codink_coop/views/mobile_view/mobile_home_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});
  static bool isMediumScreen(BuildContext context) => MediaQuery.sizeOf(context).width < 800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        Logging logging = Logging();
        logging(constraints.maxWidth);
        if(constraints.maxWidth <= 600){
          return MobileHomeScreen();
        } else {
          return DesktopHomeScreen();
        }
      }
    );
  }
}