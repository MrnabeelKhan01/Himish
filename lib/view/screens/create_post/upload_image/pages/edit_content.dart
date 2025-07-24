import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_field.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../../constant/app_styles.dart';
import '../../../../../generated/assets.dart';

class EditContent extends StatelessWidget {
  const EditContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(
          children: [
            SizedBox(height:18,),
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: kAppBoxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: kFillColor),
                                child: Row(
                                  children: [
                                    MyText(
                                      text: "80 X 80",
                                      size: 16,
                                      weight: FontWeight.w600,
                                      color: kTextGreyColor,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width:8,),
                              Expanded(
                                child: TextFormField(
                                  maxLines:2,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide:
                                            BorderSide(color: kAppBorderColor),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide:
                                            BorderSide(color: kAppBorderColor),
                                      ),
                                      hintText:
                                          "Sample extracted ad content here...",
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kTextGreyColor),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: CommonImageView(
                                          height:20,
                                          svgPath: Assets.iconsMdical,
                                        ),
                                      )),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height:18,),
                          MyText(
                            textAlign: TextAlign.center,
                            text:
                                "Would you like to add or edit \ndetails by voice",
                            weight: FontWeight.w600,
                          ),
                          SizedBox(height:8,),
                          Row(
                            children: [
                              Expanded(
                                child: MyButton(
                                  onTap: () {},
                                  buttonText: "Add by Voice",
                                  choiceIcon: Assets.iconsAudioIc,
                                  backgroundColor: kFillColor,
                                  fontColor: kPrimaryColor,
                                  height: 44,
                                  fontSize:14,
                                  hasicon: true,
                                ),
                              ),
                              SizedBox(width:12,),
                              Expanded(
                                child: MyButton(
                                  onTap: () {},
                                  buttonText: "Edit Manually",
                                  choiceIcon: Assets.iconsEditIc,
                                  backgroundColor: kFillColor,
                                  hasicon: true,
                                  fontSize:14,
                                  fontColor: kPrimaryColor,
                                  height: 44,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                MyText(text: "Creating listing for",weight:FontWeight.w600,),
                SizedBox(height:8,),
                MyButton(
                  onTap: () {},
                  buttonText: "Myself",
                  fontSize: 12,
                  height: 32,
                  outlineColor: kPrimaryColor,
                  backgroundColor:kFillColor,
                  radius: 8,
                  fontColor:kTextColor,
                ),
                MyButton(
                  onTap: () {},
                  buttonText: "Others",
                  fontSize: 12,
                  height: 32,
                  outlineColor: kPrimaryColor,
                  backgroundColor:kFillColor,
                  radius: 8,
                  fontColor:kTextColor,
                ),
                SizedBox(height:38,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
