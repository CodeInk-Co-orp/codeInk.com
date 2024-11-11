import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KColors.blue.withOpacity(.1),
      height: verticalSpace(context, .9),
      width: horizontalSpace(context, 1),
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
                textColor: getTheme(context) == Brightness.light ? KColors.darkGrey : KColors.lightGrey,
                fontWeight: FontWeight.bold,
              ),
              CustomSpacing(height: .02),
              SizedBox(
                width: horizontalSpace(context, .35),
                child: CustomText(
                  text: "Start your journey with us " * 5,
                  fontSize: 22,
                  textColor: getTheme(context) == Brightness.light ? KColors.darkGrey : KColors.lightGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomSpacing(height: .035),
              SizedBox(
                width: horizontalSpace(context, .35),
                child: CustomText(
                  text: "Start your journey with us " * 2,
                  fontSize: 18,
                  textColor: getTheme(context) == Brightness.light ? KColors.grey : KColors.lightGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          CustomSpacing(width: .05),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              height: verticalSpace(context, .65),
              width: horizontalSpace(context, .5),
              image: AssetImage('assets/images/web_page.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}