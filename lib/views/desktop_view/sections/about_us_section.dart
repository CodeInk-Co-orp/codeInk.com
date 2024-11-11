import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSpacing(
            height: 0.02,
          ),
          CustomText(
            text: "About US", 
            fontSize: 30, 
            textColor: KColors.black,
            fontWeight: FontWeight.w500,
          ),
          CustomSpacing(
            height: 0.02,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: KColors.lightBlueshade300,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: verticalSpace(context, 0.5),
                  child: Image(
                    image: AssetImage("assets/images/office.jpg"),
                  ),
                ),
                SizedBox(width: horizontalSpace(context, 0.02)),
                Expanded(
                  child: Column(
                    children: [
                      CustomText(
                        text: '''At Codink Coop, we are passionate about transforming ideas into digital experiences that engage and inspire.Our team is composed of skilled developers, designers, and strategists who specialize in crafting custom software solutions,from mobile and web applications to graphic design and branding. With a focus on both functionality and aesthetics,we bring expertise across multiple domains, including Android and iOS app development, web applications,API and payment integrations, and graphic design.''', 
                        fontSize: 20,
                        textAlign: TextAlign.start,
                        textColor: KColors.black,
                      ),
                      CustomText(
                        text: "Our Mission", 
                        fontSize: 30, 
                        textColor: KColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomText(
                        text: "To empower businesses and individuals through technology. By leveraging the latest tools and industry best practices, we deliver solutions that are not only innovative but also user-centered and reliable. Whether we're building a mobile app that delivers a seamless cross-platform experience or designing a logo that resonates with your brand, we work closely with our clients to ensure that every project aligns with their goals and vision.", 
                        fontSize: 20,
                        textAlign: TextAlign.start,
                        textColor: KColors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(width: horizontalSpace(context, 0.02)),
              ],
            ),
          ),          
        ],
      ),
    );
  }
}