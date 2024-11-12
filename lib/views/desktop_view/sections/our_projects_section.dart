import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/custom_projects.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';

class OurProjectsSection extends StatelessWidget {
  const OurProjectsSection({super.key, required this.portfolioGlobalKey});
  final GlobalKey portfolioGlobalKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: portfolioGlobalKey,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalSpace(context, .025),
        vertical: verticalSpace(context, .012),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSpacing(
            height: 0.02,
          ),
          CustomText(
            text: "Our Projects", 
            fontSize: 30, 
            textColor: isLightTheme(context) ?  KColors.black : KColors.white,
            fontWeight: FontWeight.w500,
          ),
          CustomSpacing(
            height: 0.02,
          ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 CustomProjects(
                    image: "assets/images/pick_and_drop.png", 
                    title: "Pick and Drop", 
                    subtitle: "Connects store owners with drives offering transport.Contain features like Real-time messaging,real-time location,make calls and many other.", 
                    onTap: () {
        
                    },
                  ),
                  CustomSpacing(width: .03),
                  CustomProjects(
                    image: "assets/images/life_assistant.png", 
                    title: "Life assistant", 
                    subtitle: "Help people make new friends around them. Enriched with google maps for real-time location sharing and also messaging where people can text each other",
                    onTap: () {
        
                    },
                  ),
                  CustomSpacing(width: .03), 
                  CustomProjects(
                    image: "assets/images/note_pad.png", 
                    title: "Note pad", 
                    subtitle: "Mordern notepad with 2A authentication making your data more secure",
                    onTap: () {
        
                    },
                  ),
                  CustomSpacing(width: .03), 
                  CustomProjects(
                    image: "assets/images/web_page.jpg", 
                    title: "WebApp", 
                    subtitle: "Use to releave stress, helps in meditation also has audio based music for people with trouble sleeping",
                    onTap: () {
                      
                    },
                  ),
                  CustomSpacing(width: .03),                 
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