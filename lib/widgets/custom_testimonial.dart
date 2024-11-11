import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/space.dart';
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
      width: 300,
      height: verticalSpace(context, 0.38),
      decoration: BoxDecoration(
        color: KColors.blue.withOpacity(.05),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: name, 
                      fontSize: 20, 
                      textColor: KColors.black
                    ),
                    CustomText(
                      text: location, 
                      fontSize: 16, 
                      textColor: KColors.darkGrey
                    ),
                  ],
                ),
              ],
            ),
            CustomText(
              text: review, 
              fontSize: 18, 
              textColor: KColors.black,
              fontWeight: FontWeight.w500,
            ),
            CustomSpacing(
              height: 0.01,
            ),
            Row(
              children: [
                ...List.generate(
                  5, 
                 (context)=>Icon(
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