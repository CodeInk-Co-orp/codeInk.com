import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomService extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const CustomService({super.key, required this.image, required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 350,
      height: 400,
      decoration: BoxDecoration(
        color: KColors.blue.withOpacity(.05),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: KColors.white,
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                )
              ),
            ),
            CustomSpacing(height: .012),
            CustomText(
              text: title, 
              fontSize: 25, 
              textColor: KColors.black,
              fontWeight: FontWeight.w500,
            ),
            CustomSpacing(
              height: 0.025,
            ),
            CustomText(
              text: subtitle,
              fontSize: 18,
              textColor: KColors.darkGrey
            )
          ],
        ),
      ),
    );
  }
}