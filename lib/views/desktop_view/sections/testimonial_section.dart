import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/custom_testimonial.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../../utils/themes.dart';

class TestimonialSection extends StatelessWidget {
  const TestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalSpace(context, .025),
        vertical: verticalSpace(context, .012),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Our Testimonials", 
            fontSize: 30, 
            textColor: isLightTheme(context) ?  KColors.black : KColors.white,
            fontWeight: FontWeight.w500,
          ),
          CustomSpacing(height: .02),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomTestimonial(
                  image: "assets/images/1.png", 
                  review: "I had the pleasure of working with Codink Coop on developing our application, and I couldn’t be more pleased with the outcome. From the start, their team was professional, communicative, and extremely knowledgeable.", 
                  name: "Zeeshan Jerral", 
                  location: "Pakistan"
                ),
                CustomSpacing(width: .03),
                CustomTestimonial(
                  image: "assets/images/2.jpg", 
                  review: "We partnered with Codink Coop for life assistant project, and the results have exceeded our expectations. From start to finish, the team demonstrated professionalism, technical expertise, and a deep understanding of our vision.", 
                  name: "Ahaan Rakesh", 
                  location: "India"
                ),
                CustomSpacing(width: .03),
                CustomTestimonial(
                  image: "assets/images/3.jpg", 
                  review: "Working with Codink Coop for our logo and branding was a fantastic experience from start to finish. They took the time to understand our brand’s vision, values, and target audience, and the results were better than we could have imagined!", 
                  name: "Olivia", 
                  location: "USA"
                ),
                CustomSpacing(width: .03),
                CustomTestimonial(
                  image: "assets/images/4.jpg", 
                  review: "Offered very great assistance on my school project, and they delivered exceptional results. Their expertise and dedication made a huge difference in the quality and success of my project.", 
                  name: "Dennis M", 
                  location: "Kenya"
                ),              
              ],
            ),
          ),
        ],
      ),
    );
  }
}