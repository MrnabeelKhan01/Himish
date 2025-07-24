import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_text_field.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../../generated/assets.dart';

class EditPost extends StatelessWidget {
  const EditPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppbar("Review & Edit"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Your Ad Preview",
                size: 16,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: kAppBoxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      MyTextField(
                        hint: "Enter here...",
                        bordercolor: kAppBorderColor,
                        label: "Ad Content",
                        maxLines: 5,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "Ad Image",
                            size: 16,
                            weight: FontWeight.w600,
                            color: kBlackColor,
                          ),
                          CommonImageView(
                            svgPath: Assets.iconsEditIc,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      CommonImageView(
                        imagePath: Assets.imagesBusinessCard,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kFillColor,
                    border: Border.all(color: kAppBorderColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonImageView(
                        svgPath: Assets.iconsInfo,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: MyText(
                        text:
                            "Make sure your ad looks right. Edit text or replace the image as needed.",
                        size: 12,
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
