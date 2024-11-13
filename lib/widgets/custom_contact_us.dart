import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomContactUs extends StatelessWidget {
  String img;
  String title;
  String subtitle;
  void Function()? onTap;
  CustomContactUs({super.key, required this.img, required this.title, required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: KColors.lightGrey,
      child: SizedBox(
        width: horizontalSpace(context, 0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onTap,
              child: Card(
                color: KColors.lightBlueshade700,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "assets/icons/$img",
                      ),
                      color: KColors.white,
                      height: 30,
                      width: 30,
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
                  textColor: isLightTheme(context) ? KColors.white : KColors.black,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: subtitle, 
                  fontSize: 16, 
                  textColor: isLightTheme(context) ? KColors.white : KColors.black,
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
  SocialMedia({super.key, required this.img,required this.onTap});
  String img;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image(
              height: 35,
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