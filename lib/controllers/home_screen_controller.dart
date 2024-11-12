import 'package:codink_coop/services/logging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  int mobileScreenView = 600;
  final ScrollController scrollController = ScrollController();
  Logging logging = Logging();
  RxBool navbarVisible = true.obs;
  RxDouble scrollOffset = 0.0.obs;
  GlobalKey introductionGlobalKey = GlobalKey();
  GlobalKey serviceGlobalKey = GlobalKey();
  GlobalKey aboutMeGlobalKey = GlobalKey();
  GlobalKey portfolioGlobalKey = GlobalKey();
  GlobalKey testimonialsGlobalKey = GlobalKey();
  
  void scrollListen(){
    List<double> trend = [];
    scrollController.addListener((){
      trend.add(scrollController.offset);
    });
  }

  void navigateToSection(String label){
    try{
      Scrollable.ensureVisible(
        label.toLowerCase() == 'services' ? serviceGlobalKey.currentContext!
        : label.toLowerCase() == 'about us' ? aboutMeGlobalKey.currentContext!
        : label.toLowerCase() == 'our projects' ? portfolioGlobalKey.currentContext!
        : label.toLowerCase() == 'testimonials' ? testimonialsGlobalKey.currentContext!
        : introductionGlobalKey.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } catch(e){
      logging(e);
    }
  }

  @override
  void onInit() {
    scrollListen();
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}