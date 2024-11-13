import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/views/layout_screen.dart';
import 'package:codink_coop/widgets/button.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key, required this.introductionGlobalKey});
  final GlobalKey introductionGlobalKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: introductionGlobalKey,
      color: isLightTheme(context) ? KColors.blue.withOpacity(.05) : KColors.darkerGrey,
      height: !LayoutScreen.isSmallScreen(context) ? verticalSpace(context, .9) < 500 ? 500 : verticalSpace(context, .9) : 800,
      width: horizontalSpace(context, 1),
      child: !LayoutScreen.isSmallScreen(context) ? Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalSpace(context, .025)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Start your journey with us",
                  fontSize: 16,
                  textColor: isLightTheme(context) ? KColors.darkGrey : KColors.lightGrey,
                  fontWeight: FontWeight.bold,
                ),
                CustomSpacing(height: .02),
                SizedBox(
                  width: horizontalSpace(context, .35),
                  child: CustomText(
                    text: "Welcome to CodeInk Solutions, your trusted partner in navigating the digital landscape. Explore our services, insights, and resources to discover how we can empower your organization to thrive in the digital age.",
                    fontSize: 22,
                    textColor: isLightTheme(context) ? KColors.darkGrey : KColors.lightGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomSpacing(height: .035),
                SizedBox(
                  width: horizontalSpace(context, .35),
                  child: CustomText(
                    text: "Crafting Digital Solutions. Driving Business Growth.",
                    fontSize: 18,
                    textColor: isLightTheme(context) ? KColors.grey : KColors.lightGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomSpacing(height: .05),
                CustomButton(
                  horizontalPadding: .13,
                  onPressed: (){
        
                  },
                  text: "Book Us NOW"
                )
              ],
            ),
            CustomSpacing(width: !LayoutScreen.isMediumScreen(context) ? .05 : .00),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: verticalSpace(context, .65) < 400 ? 400 : verticalSpace(context, .65),
                width: horizontalSpace(context, !LayoutScreen.isMediumScreen(context) ? .5 : .4),
                image: AssetImage('assets/images/web_page.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ) : Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalSpace(context, .05),
          vertical: verticalSpace(context, .05),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              height: verticalSpace(context, .25) < 300 ? 300 : verticalSpace(context, .25),
              width: horizontalSpace(context, .95),
              image: AssetImage('assets/images/web_page.jpg'),
              fit: BoxFit.cover,
            ),
            CustomSpacing(height: .05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Start your journey with us",
                  fontSize: 16,
                  textColor: isLightTheme(context) ? KColors.darkGrey : KColors.lightGrey,
                  fontWeight: FontWeight.bold,
                ),
                CustomSpacing(height: .02),
                SizedBox(
                  width: horizontalSpace(context, .95),
                  child: CustomText(
                    text: "Welcome to CodeInk Solutions, your trusted partner in navigating the digital landscape. Explore our services, insights, and resources to discover how we can empower your organization to thrive in the digital age.",
                    fontSize: 22,
                    textColor: isLightTheme(context) ? KColors.darkGrey : KColors.lightGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomSpacing(height: .035),
                SizedBox(
                  width: horizontalSpace(context, .95),
                  child: CustomText(
                    text: "Crafting Digital Solutions. Driving Business Growth.",
                    fontSize: 18,
                    textColor: isLightTheme(context) ? KColors.grey : KColors.lightGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomSpacing(height: .05),
                CustomButton(
                  onPressed: (){
        
                  },
                  text: "Book Us NOW"
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}