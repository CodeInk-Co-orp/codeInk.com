import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/views/layout_screen.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
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
      width: !LayoutScreen.isSmallScreen(context) ? 350 : 250,
      height: !LayoutScreen.isSmallScreen(context) ? 380 : 380,
      decoration: BoxDecoration(
        color: isLightTheme(context) ? KColors.blue.withOpacity(.05) : KColors.darkerGrey,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: isLightTheme(context) ? KColors.white : KColors.black,
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
                        color: isLightTheme(context) ? KColors.blue : KColors.darkerGrey,
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
                  textColor: isLightTheme(context) ?  KColors.black : KColors.white,
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
                    textColor: isLightTheme(context) ? KColors.black : KColors.lightGrey,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
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