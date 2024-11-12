import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/views/layout_screen.dart';
import 'package:codink_coop/widgets/button.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({super.key, required this.homeScreenController});
  final HomeScreenController homeScreenController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: horizontalSpace(context, 1),
      color: isLightTheme(context) ? KColors.white : KColors.black,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalSpace(context, .05),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                visible: !LayoutScreen.isMediumScreen(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image(
                        height: 100,
                        width: 100,
                        image: AssetImage('assets/icons/codink_logo.png'),
                      ),
                    ),
                    CustomText(
                      text: "CodInk Coop",
                      fontSize: 18,
                      textColor: isLightTheme(context) ? KColors.darkGrey : KColors.lightGrey,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    ['Service', 'About Me', 'Portfolio', 'Testimonials'].length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: CustomText(
                        text: ['Service', 'About Me', 'Portfolio', 'Testimonials'][index],
                        fontSize: 18,
                        textColor: isLightTheme(context) ? KColors.darkGrey : KColors.lightGrey,
                      ),
                    ),
                  )
                ],
              ),
              CustomButton(
                onPressed: (){},
                color: Colors.purple,
                text: "Contact"
              )
            ],
          ),
        ),
      ),
    );
  }
}