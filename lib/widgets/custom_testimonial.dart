import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/views/layout_screen.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomTestimonial extends StatelessWidget {
  final String image;
  final String review;
  final String name;
  final String location;
  const CustomTestimonial({super.key, required this.image, required this.review,required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: !LayoutScreen.isSmallScreen(context) ? 350 : 250,
      height: !LayoutScreen.isSmallScreen(context) ? 300 : 300,
      decoration: BoxDecoration(
        color: isLightTheme(context) ? KColors.blue.withOpacity(.05) : KColors.darkerGrey,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    image
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: name, 
                      fontSize: 20, 
                      textColor: isLightTheme(context) ? KColors.black : KColors.white,
                    ),
                    CustomText(
                      text: location, 
                      fontSize: 16, 
                      textColor: isLightTheme(context) ? KColors.darkGrey : KColors.lightGrey,
                    ),
                  ],
                ),
              ],
            ),
            CustomSpacing(height: .03),
            CustomText(
              text: review, 
              fontSize: 18,
              maxLines: LayoutScreen.isSmallScreen(context) ? 6 : null,
              textColor: isLightTheme(context) ?  KColors.black : KColors.lightGrey,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w500,
            ),
            CustomSpacing(
              height: 0.01,
            ),
            Row(
              children: [
                ...List.generate(
                  5, 
                 (context) =>Icon(
                    Icons.star_rate,
                    color: Colors.yellow,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}