import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/generated/assets.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

class OnSaleCard extends StatelessWidget {
  const OnSaleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: kWhiteColor),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CommonImageView(
                      radius: 8,
                      imagePath: Assets.imagesOnSale,
                      height: 72,
                      width: 94,
                    ),
                    SizedBox(width:10,),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CommonImageView(
                              svgPath: Assets.iconsSpecial,
                            ),
                            SizedBox(width:4,),
                            MyText(
                              text: "22 Specials",
                              size: 12,
                              weight: FontWeight.w500,
                              color: kTextGreyColor,
                            ),
                          ],
                        ),
                        MyText(
                          text: "Moshe's \nSupermarket",
                          size: 14,
                          weight: FontWeight.w700,
                        ),
                        Row(
                          children: [
                            CommonImageView(
                              svgPath: Assets.iconsStoreLoc,
                            ),
                            SizedBox(width:4,),
                            MyText(
                              text: "Brooklyn, NY \u2022 ",
                              size: 12,
                              weight: FontWeight.w500,
                              color: kTextGreyColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kAppBGColor),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3),
                        child: MyText(
                          text: "Grocery",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    SizedBox(height:10,),
                    Row(
                      children: [
                        CommonImageView(
                          svgPath: Assets.iconsShareIc,
                          height:17,
                        ),
                        SizedBox(width:10,),
                        CommonImageView(
                          svgPath: Assets.iconsBookmarkIc,
                          height:17,
                        )
                      ],
                    ),
                    SizedBox(height:10,),
                    Row(
                      children: [
                        MyText(
                          text: "Valid till ",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kTextGreyColor,
                        ),
                        SizedBox(width:4,),
                        MyText(
                          text: "Apr 29",
                          size: 10,
                          weight: FontWeight.w600,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height:10,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kAppBGColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Shwartz",
                            size: 10,
                            weight: FontWeight.w500,
                            color: kTextGreyColor,
                          ),
                          SizedBox(height:4,),
                          MyText(
                            textAlign:TextAlign.center,
                            text: "Pure Blossom \nHoney",
                            size: 10,
                            weight: FontWeight.w500,

                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              MyText(
                                text: "\$7.99",
                                size: 10,
                                weight: FontWeight.w500,
                                color: kRedColor,
                              ),
                              MyText(
                                text: "\$6.49",
                                size: 10,
                                weight: FontWeight.w500,
                                color: kGreenColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width:8,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kAppBGColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          MyText(
                            text: "Shwartz",
                            size: 10,
                            weight: FontWeight.w500,
                            color: kTextGreyColor,
                          ),
                          SizedBox(height:8,),
                          MyText(
                            text: "Pure Blossom \nHoney",
                            size: 10,
                            weight: FontWeight.w500,
                            color: kTextGreyColor,
                          ),
                          Row(
                            children: [
                              MyText(
                                text: "\$7.99",
                                size: 10,
                                weight: FontWeight.w500,
                                color: kRedColor,
                              ),
                              MyText(
                                text: "\$6.49",
                                size: 10,
                                weight: FontWeight.w500,
                                color: kGreenColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
