import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/custom_service.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key, required this.serviceGlobalKey});
  final GlobalKey serviceGlobalKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: serviceGlobalKey,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalSpace(context, .025),
        vertical: verticalSpace(context, .02),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Our Services", 
            fontSize: 30, 
            textColor: isLightTheme(context) ? KColors.black : KColors.white,
            fontWeight: FontWeight.w500,
          ),
          CustomSpacing(
            height: 0.02,
          ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                  CustomService(
                    image: "assets/icons/android.png", 
                    title: "Android application development", 
                    subtitle: "Specialized in creating clean, efficient and user-friendly applications. We build applications that deliver a consistent and seamless experience across all android applications."
                  ),
                  CustomSpacing(width: .03),
                  CustomService(
                    image: "assets/icons/ios.png", 
                    title: "IOS application development", 
                    subtitle: "We develop high-quality iOS applications ensuring a seamless and native-like experience for Apple users. Our approach to iOS app development focuses on clean architecture, smooth UI animations, and efficient performance to meet the high expectations of iOS users."
                  ),
                  SizedBox(
                    width: horizontalSpace(context, 0.03),
                  ),
                  CustomService(
                    image: "assets/icons/web.png", 
                    title: "Web/WebApp development", 
                    subtitle: "We design and develop responsive, high-performance web applications using modern technologies that prioritize both functionality and user experience.We create cross-platform web applications that maintain consistent performance and visual appeal across devices and screen sizes."
                  ),
                  SizedBox(
                    width: horizontalSpace(context, 0.03),
                  ),
                  CustomService(
                    image: "assets/icons/api.png", 
                    title: "APIs integrations", 
                    subtitle: "We have extensive experience working with RESTful APIs and integrating third-party services to enhance app functionality and user engagement. From retrieving real-time data to managing secure transactions. We utilize APIs to build feature-rich applications that provide users with seamless interactions."
                  ),
                  SizedBox(
                    width: horizontalSpace(context, 0.03),
                  ),
                  CustomService(
                    image: "assets/icons/money.png", 
                    title: "Payment integrations", 
                    subtitle: "In the realm of payment integration, We specialize in implementing secure and user-friendly payment solutions using popular providers like Stripe, PayPal, M-Pesa, Apple Pay and Braintree. We ensure that all payment integrations follow industry standards for security, encryption, and data handling."
                  ),
                  SizedBox(
                    width: horizontalSpace(context, 0.03),
                  ),
                  CustomService(
                    image: "assets/icons/graphics.png", 
                    title: "Graphic Designs", 
                    subtitle: "We create graphics that are both visually engaging and purposeful. Our design work spans a variety of styles, from sleek, minimalist aesthetics to bold, colorful compositions, tailored to meet the unique needs of each project. "
                  ),
                  SizedBox(
                    width: horizontalSpace(context, 0.03),
                  ),
                  CustomService(
                    image: "assets/icons/ps.png", 
                    title: "Logo Designs", 
                    subtitle: "We specialize in creating distinctive, memorable logos that capture the essence of a brand and make a lasting impression. Our logo design approach combines creativity with strategic thinking to ensure each logo resonates with the target audience and stands out in a competitive market."
                  ),                        
               ],               
             ),
           ),
           SizedBox(
            height: horizontalSpace(context, 0.03),
          ), 
        ],
      ),
    );
  }
}