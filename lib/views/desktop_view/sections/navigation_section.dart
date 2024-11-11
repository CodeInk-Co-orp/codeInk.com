import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:flutter/material.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({super.key, required this.homeScreenController});
  final HomeScreenController homeScreenController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: verticalSpace(context, .1),
      width: horizontalSpace(context, 1),
      color: KColors.white,
    );
  }
}