import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/views/desktop_view/sections/about_us_section.dart';
import 'package:codink_coop/views/desktop_view/sections/contact_us_section.dart';
import 'package:codink_coop/views/desktop_view/sections/introduction_section.dart';
import 'package:codink_coop/views/desktop_view/sections/maps_section.dart';
import 'package:codink_coop/views/desktop_view/sections/navigation_section.dart';
import 'package:codink_coop/views/desktop_view/sections/our_projects_section.dart';
import 'package:codink_coop/views/desktop_view/sections/service_section.dart';
import 'package:codink_coop/views/desktop_view/sections/testimonial_section.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopHomeScreen extends StatelessWidget {
  DesktopHomeScreen({super.key, required});
  final HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isLightTheme(context) ? KColors.white : KColors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationSection(homeScreenController: homeScreenController),          
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                // shrinkWrap: true,
                // physics: ClampingScrollPhysics(),
                children: [
                  // Introduction Section
                  IntroductionSection(introductionGlobalKey: homeScreenController.introductionGlobalKey),
                  // About Us Section
                  AboutUsSection(aboutMeGlobalKey: homeScreenController.aboutMeGlobalKey,),
                  // Service  Section
                  ServiceSection(serviceGlobalKey: homeScreenController.serviceGlobalKey),
                  // Portfolio Section
                  OurProjectsSection(portfolioGlobalKey: homeScreenController.portfolioGlobalKey),
                  TestimonialSection(testimonialsGlobalKey: homeScreenController.testimonialsGlobalKey),
                  // Contact Section
                  ContactUsSection(),
                  MapsSection(mapsSectionKey: homeScreenController.mapsGlobalKey),
                  CustomSpacing(height: .05),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}