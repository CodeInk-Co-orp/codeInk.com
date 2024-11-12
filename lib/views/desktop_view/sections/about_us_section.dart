import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/views/layout_screen.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key, required this.aboutMeGlobalKey});
  final GlobalKey aboutMeGlobalKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: aboutMeGlobalKey,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalSpace(context, .025),
        vertical: verticalSpace(context, .02)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSpacing(
            height: 0.02,
          ),
          CustomText(
            text: "About US", 
            fontSize: 30, 
            textColor: isLightTheme(context) ? KColors.black : KColors.white,
            fontWeight: FontWeight.w500,
          ),
          CustomSpacing(
            height: 0.02,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: isLightTheme(context) ? KColors.white : KColors.black,
            ),
            child: !LayoutScreen.isMediumScreen(context) ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: verticalSpace(context, .65) < 350 ? 350 : verticalSpace(context, .65),
                  width: horizontalSpace(context, 0.4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/office.jpg",
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(width: horizontalSpace(context, 0.025)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: '''At Codink Coop, we are passionate about transforming ideas into digital experiences that engage and inspire.Our team is composed of skilled developers, designers, and strategists who specialize in crafting custom software solutions,from mobile and web applications to graphic design and branding. With a focus on both functionality and aesthetics,we bring expertise across multiple domains, including Android and iOS app development, web applications,API and payment integrations, and graphic design.''', 
                          fontSize: 18,
                          textAlign: TextAlign.start,
                          textColor: isLightTheme(context) ? KColors.black : KColors.lightGrey,
                        ),
                        CustomSpacing(height: .05),
                        CustomText(
                          text: "Our Mission", 
                          fontSize: 30, 
                          textColor: isLightTheme(context) ? KColors.black : KColors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: "To empower businesses and individuals through technology. By leveraging the latest tools and industry best practices, we deliver solutions that are not only innovative but also user-centered and reliable. Whether we're building a mobile app that delivers a seamless cross-platform experience or designing a logo that resonates with your brand, we work closely with our clients to ensure that every project aligns with their goals and vision.", 
                          fontSize: 18,
                          textAlign: TextAlign.start,
                          textColor: isLightTheme(context) ? KColors.black : KColors.lightGrey,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: horizontalSpace(context, 0.05)),
              ],
            ) : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: verticalSpace(context, .65) < 350 ? 350 : verticalSpace(context, .65),
                      width: horizontalSpace(context, 0.4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/office.jpg",
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(width: horizontalSpace(context, 0.025)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Center(
                          child: CustomText(
                            text: '''At Codink Coop, we are passionate about transforming ideas into digital experiences that engage and inspire.Our team is composed of skilled developers, designers, and strategists who specialize in crafting custom software solutions,from mobile and web applications to graphic design and branding. With a focus on both functionality and aesthetics,we bring expertise across multiple domains, including Android and iOS app development, web applications,API and payment integrations, and graphic design.''', 
                            fontSize: 18,
                            textAlign: TextAlign.start,
                            textColor: isLightTheme(context) ? KColors.black : KColors.lightGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomSpacing(height: .025),
                CustomText(
                  text: "Our Mission", 
                  fontSize: 30, 
                  textColor: isLightTheme(context) ? KColors.black : KColors.white,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: "To empower businesses and individuals through technology. By leveraging the latest tools and industry best practices, we deliver solutions that are not only innovative but also user-centered and reliable. Whether we're building a mobile app that delivers a seamless cross-platform experience or designing a logo that resonates with your brand, we work closely with our clients to ensure that every project aligns with their goals and vision.", 
                  fontSize: 18,
                  textAlign: TextAlign.start,
                  textColor: isLightTheme(context) ? KColors.black : KColors.lightGrey,
                ),
              ],
            ),
          ),          
        ],
      ),
    );
  }
}