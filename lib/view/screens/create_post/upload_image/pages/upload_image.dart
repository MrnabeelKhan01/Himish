import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';
import 'package:himish/view/widgets/rich_texts.dart';

import '../../../../../generated/assets.dart';
import '../../widgets/loader.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Column(
                children: [
                  SizedBox(height:18,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: kWhiteColor),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [

                          MyText(
                            text: "Post your ad",
                            size: 16,
                            weight: FontWeight.w600,
                            color:kBlackColor,
                          ),
                          SizedBox(height:16,),
                          Container(
                            decoration:
                                BoxDecoration(shape: BoxShape.circle, color: kFillColor),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CommonImageView(
                                svgPath: Assets.iconsUploadImage,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Texts(
                              textAlign:TextAlign.center,
                                children: [
                              TextSpan(
                                  text: "Drag & Drop or Tap to Upload",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimaryColor)),
                              TextSpan(
                                  text: " ,PNG,JPG up to 5 MB",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: kTextGreyColor))
                            ]),
                          ),
                          SizedBox(height:12,),
                          MyButton(
                            onTap: () {

                            },
                            buttonText: "Upload image",
                            height: 40,
                            backgroundColor: kFillColor,
                            outlineColor: kPrimaryColor,
                            fontColor:kPrimaryColor,
                            hasicon:true,
                            choiceIcon:Assets.iconsExport,
                          ),
                          SizedBox(height:12,),
                          MyButton(
                            onTap: () {},
                            buttonText: "Take a photo",
                            height: 40,
                            backgroundColor: kFillColor,
                            outlineColor: kPrimaryColor,
                            fontColor:kPrimaryColor,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: kWhiteColor,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child:MyButton(
                onTap: () {

                },
                buttonText: "Next",
              ),

            ),
          ),
        ],
      ),
    );
  }
}
