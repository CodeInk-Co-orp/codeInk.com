import 'package:codink_coop/controllers/contact_us_controller.dart';
import 'package:codink_coop/services/get_theme.dart';
import 'package:codink_coop/utils/themes.dart';
import 'package:codink_coop/widgets/button.dart';
import 'package:codink_coop/widgets/custom_contact_us.dart';
import 'package:codink_coop/widgets/custom_spacing.dart';
import 'package:codink_coop/widgets/input.dart';
import 'package:codink_coop/widgets/space.dart';
import 'package:codink_coop/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsSection extends StatelessWidget {
  ContactUsController contactUsController = Get.put(ContactUsController());
  ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSpacing(
          height: 0.02,
        ),
        CustomText(
          text: "Contact Us", 
          fontSize: 30, 
          textColor: isLightTheme(context) ? KColors.black : KColors.white,
          fontWeight: FontWeight.w500,
        ),
        CustomSpacing(
          height: 0.02,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: horizontalSpace(context, 0.2),
                // height: verticalSpace(context, 0.5),
                decoration: BoxDecoration(
                  color: KColors.darkGrey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    CustomText(
                      text: "Get in touch with us", 
                      fontSize: 30, 
                      textColor: isLightTheme(context) ? KColors.black : KColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    Form(
                      key: contactUsController.formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    controller: contactUsController.name, 
                                    validator: (value){
                                      return value!.isEmpty ? "Input your name to proceed" : null;
                                    }, 
                                    textInputType: TextInputType.name, 
                                    hintText: "Name", 
                                  ),
                                ),
                                SizedBox(width: horizontalSpace(context, 0.02),),
                                Expanded(
                                  child: CustomTextInput(
                                    controller: contactUsController.email, 
                                    validator: (value){
                                      return !value!.isEmail ? "Invalid email address" : null;
                                    }, 
                                    textInputType: TextInputType.emailAddress, 
                                    hintText: "Email", 
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: verticalSpace(context, 0.03),
                            ),
                            CustomTextInput(
                              controller: contactUsController.subject, 
                              validator: (value){
                                return value!.isEmpty ? "Subject cannot be empty" : null;
                              }, 
                              textInputType: TextInputType.text, 
                              hintText: "Subject"
                            ),
                            SizedBox(
                              height: verticalSpace(context, 0.03),
                            ),
                            CustomTextInput(
                              controller: contactUsController.message,
                              maxLines: null, 
                              validator: (value){
                                return value!.isEmpty ? "Message cannot be empty" : null;
                              }, 
                              textInputType: TextInputType.text, 
                              hintText: "Message"
                            ),
                            SizedBox(
                              height: verticalSpace(context, 0.03),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: horizontalSpace(context, 0.15)
                              ),
                              child: CustomButton(
                                onPressed: (){
                                  if(contactUsController.formKey.currentState!.validate()){
                                    
                                  }
                                }, 
                                text: "Send message"
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ),
            CustomSpacing(
              width: 0.02,
            ),
            Expanded(
              child: SizedBox(
                height: verticalSpace(context, 0.5),
                child: Column(
                  children: [
                    CustomText(
                      text: "Contact details", 
                      fontSize: 30, 
                      textColor: isLightTheme(context) ? KColors.black : KColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    Row(
                      children: [
                        CustomContactUs(
                          img: "location.png", 
                          title: "Location", 
                          subtitle: "Nairobi CBD", 
                          onTap: (){}
                        ),
                        CustomSpacing(
                          width: 0.01,
                        ),
                        CustomContactUs(
                          img: "call.png", 
                          title: "Call", 
                          subtitle: "+254740025607", 
                          onTap: (){}
                        ),
                      ],
                    ),
                    CustomSpacing(
                      height: 0.02,
                    ),
                    Row(
                      children: [
                        CustomContactUs(
                          img: "clock.png", 
                          title: "Availability", 
                          subtitle: "24/7", 
                          onTap: (){}
                        ),
                        CustomSpacing(
                          width: 0.01,
                        ),
                        CustomContactUs(
                          img: "email.png", 
                          title: "Email", 
                          subtitle: "codeinkcoorp@gmail.com", 
                          onTap: (){}
                        ),
                      ],
                    ),
                    CustomText(
                      text: "Social media", 
                      fontSize: 30, 
                      textColor: isLightTheme(context) ? KColors.black : KColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMedia(img: "github.png", onTap: () {}),
                        SocialMedia(img: "linkedin.png", onTap: () {  },),
                        SocialMedia(img: "web.png", onTap: () {  },),
                        SocialMedia(img: "twitter.png", onTap: () {  },),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),        
      ],
    );
  }
}