import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSpacing(
          height: 0.02,
        ),
        CustomText(
          text: "Our Services", 
          fontSize: 30, 
          textColor: KColors.black,
          fontWeight: FontWeight.w500,
        ),
        CustomSpacing(
          height: 0.02,
        ),
        Container(
          decoration: BoxDecoration(
            color: KColors.lightGreen,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Icon(
                Icons.phone
              )
            ],
          ),
        )
      ],
    );
  }
}