import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_field.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../../generated/assets.dart';

class ReviewSubmit extends StatelessWidget {
  const ReviewSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Container(
              decoration: kAppBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kFillColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                CommonImageView(
                                  height: 60,
                                  width: 60,
                                  svgPath: Assets.iconsAudioIc,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:18,),
                    MyText(
                      text: "Tap to Speak",
                      weight: FontWeight.w600,
                      color: kTextGreyColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
                decoration: kAppBoxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Ad Content",
                        size: 16,
                        weight: FontWeight.w600,
                      ),
                      MyTextField(
                        maxLines: 5,
                        bordercolor: kAppBorderColor,
                        hint: 'Enter here...',
                      ),
                      MyButton(
                        onTap: () {},
                        height:40,
                        backgroundColor:kWhiteColor,
                        fontColor:kPrimaryColor,
                        outlineColor:kPrimaryColor,
                        buttonText: "Edit Ad",
                        choiceIcon: Assets.iconsEditIc,
                        hasicon: true,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
