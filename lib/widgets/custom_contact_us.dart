import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomContactUs extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  final void Function()? onTap;
  const CustomContactUs({super.key, required this.img, required this.title, required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isLightTheme(context) ? KColors.blue.withOpacity(.05) : KColors.darkerGrey,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onTap,
              child: Card(
                color: isLightTheme(context) ? KColors.white : KColors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "assets/icons/$img",
                      ),
                      color: KColors.white,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title, 
                  fontSize: 18, 
                  textColor: isLightTheme(context) ? KColors.black : KColors.white,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: subtitle, 
                  fontSize: 15, 
                  textColor: isLightTheme(context) ? KColors.darkGrey : KColors.lightGrey,
                  fontWeight: FontWeight.w500,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key, required this.img,required this.onTap});
  final String img;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image(
              height: 20,
              width: 20,
              image: AssetImage(
                "assets/icons/$img"
              )
            ),
          ),
        ),
      ),
    );
  }
}