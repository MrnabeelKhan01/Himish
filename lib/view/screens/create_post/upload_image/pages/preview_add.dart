import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constant/app_colors.dart';
import '../../../../../generated/assets.dart';
import '../../../../widgets/common_image_widget.dart';
import '../../../../widgets/my_text_widget.dart';
import '../../../../widgets/rich_texts.dart';

class PreviewAdd extends StatelessWidget {
   PreviewAdd({super.key});
  final List<String> items = [
    "Windows",
    "Window Replacement",
    "Glass",
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kWhiteColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [

                    CommonImageView(
                      radius: 8,
                      height: 316,
                      width: Get.width,
                      imagePath: Assets.imagesBusinessCard,
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kPrimaryColor, // color changes by index
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: MyText(
                              text: "Home Improvement",
                              size: 12,
                              weight: FontWeight.w500,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height:18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          MyText(
                            text: "Mail On Broadway",
                            size: 16,
                            weight: FontWeight.w600,
                            color: kBlackColor,
                          ),
                          SizedBox(width: 4),
                          CommonImageView(svgPath: Assets.iconsBlueTick),
                        ]),
                        Row(
                          children: [
                            CommonImageView(svgPath: Assets.iconsLocationIc),
                            Texts(children: [
                              TextSpan(
                                text: "New York, NY ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: kTextGreyColor),
                              ),
                              TextSpan(
                                text: "08 mi. away",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: kTextGreyColor),
                              )
                            ])
                          ],
                        ),
                      ],
                    ),

                    Row(children: [
                      CommonImageView(svgPath: Assets.iconsTimerIc),
                      SizedBox(width: 4),
                      MyText(
                        text: "1 h",
                        size: 12,
                        color: kTextColor,
                      ),
                    ])
                  ],
                ),
                SizedBox(height:10,),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: items.map((text) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: kBlackColor.withOpacity(0.08),
                            spreadRadius: 0,
                            blurRadius: 20,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: MyText(
                        text: text,
                        size: 12,
                        weight: FontWeight.w500,
                        color: kTextGreyColor,
                      ),
                    );
                  }).toList(),
                ),
               
              ],
            ),
          ),
        )
      ],),
    );
  }
}
