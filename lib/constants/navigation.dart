import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:get/get.dart';

HomeScreenController homeScreenController = Get.put(HomeScreenController());

List<Map<String, dynamic>> navigationTabs = [
  {
    'label' : 'About US',
  },
  {
    'label' : 'Services',
  },
  {
    'label' : 'Our Projects',
  },
  {
    'label' : 'Testimonials',
  },
];