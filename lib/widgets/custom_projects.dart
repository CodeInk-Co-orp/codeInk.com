import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomProjects extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final void Function()? onTap;
  const CustomProjects({super.key, required this.image, required this.title,required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 350,
      height: 380,
      decoration: BoxDecoration(
        color: KColors.blue.withOpacity(.05),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: verticalSpace(context, 0.3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: KColors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                right: 0,
                child: GestureDetector(
                  onTap: onTap,
                  child: Card(
                    color: KColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child: Tooltip(
                      decoration: BoxDecoration(
                        color: KColors.blue,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      message: "Download APK",
                      textStyle: TextStyle(
                        color: KColors.white,
                        fontWeight: FontWeight.w600
                      ),
                      child: Icon(
                       Icons.download,
                      ),
                    ),
                  ),
                )
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  text: title, 
                  fontSize: 25, 
                  textColor: KColors.black,
                  fontWeight: FontWeight.w500,
                ),
                CustomSpacing(
                  height: 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CustomText(
                    text: subtitle,
                    fontSize: 18,
                    textColor: KColors.black
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}