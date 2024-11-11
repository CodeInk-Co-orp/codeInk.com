import 'package:codink_coop/controllers/home_screen_controller.dart';
import 'package:codink_coop/utils/themes.dart';
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
      height: verticalSpace(context, .1),
      width: horizontalSpace(context, 1),
      color: KColors.white,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalSpace(context, .05),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
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
                    textColor: KColors.darkGrey,
                  ),
                ],
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
                        textColor: KColors.darkGrey,
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