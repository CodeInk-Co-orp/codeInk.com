import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/views/desktop_view/sections/about_us_section.dart';
import 'package:codink_coop/views/desktop_view/sections/introduction_section.dart';
import 'package:codink_coop/views/desktop_view/sections/navigation_section.dart';
import 'package:codink_coop/views/desktop_view/sections/our_projects_section.dart';
import 'package:codink_coop/views/desktop_view/sections/service_section.dart';
import 'package:codink_coop/views/desktop_view/sections/testimonial_section.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key, required this.homeScreenController});
  final HomeScreenController homeScreenController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getTheme(context) == Brightness.light ? KColors.white : KColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Visibility(
              visible: homeScreenController.navbarVisible.value,
              child: NavigationSection(homeScreenController: homeScreenController)
            ),
          ),
          Expanded(
            child: ListView(
              controller: homeScreenController.scrollController,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                // Introduction Section
                IntroductionSection(),
                // About Us Section
                AboutUsSection(),
                // Service  Section
                ServiceSection(),
                // Portfolio Section
                OurProjectsSection(),
                TestimonialSection(),
                CustomSpacing(height: .05),
              ],
            ),
          ),
        ],
      ),
    );
  }
}