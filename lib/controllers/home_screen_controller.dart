import 'package:codink_coop/services/logging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  int mobileScreenView = 550;
  final ScrollController scrollController = ScrollController();
  Logging logging = Logging();
  RxBool navbarVisible = true.obs;
  RxDouble scrollOffset = 0.0.obs;
  
  void scrollListen(){
    List<double> trend = [];
    scrollController.addListener((){
      // if(scrollController.offset < scrollOffset.value){
      //   navbarVisible.value = true;
      //   logging("To true");
      // } else if(scrollController.offset > scrollOffset.value){
      //   navbarVisible.value = false;
      //   logging("To false");
      // }
      trend.add(scrollController.offset);
    });
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