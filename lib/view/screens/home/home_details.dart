import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/common_image_widget.dart';
import '../../widgets/my_text_widget.dart';
import '../../widgets/rich_texts.dart';

class HomeDetails extends StatelessWidget {
  HomeDetails({super.key, required this.image});

  final List<String> items = [
    "Windows",
    "Window Replacement",
    "Glass",
  ];
  final String image;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:18,),
            CommonImageView(
              radius: 8,
              height: 316,
              width: Get.width,
              imagePath: image,
            ),
            SizedBox(height:12,),
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
                        SizedBox(width:6,),
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
            SizedBox(height:6,),
            MyText(
              text: "Description",
              size: 16,
              weight: FontWeight.w600,
              color: kBlackColor,
            ),
            SizedBox(height:10,),
            MyText(
              text:
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout...",
              color: kTextGreyColor,
            ),
            SizedBox(height:10,),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: items.map((text) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  SizedBox(
                    width: 38,
                    child: IconButton(
                      icon: CommonImageView(
                        svgPath: Assets.iconsFavouriteIc,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: IconButton(
                      icon: CommonImageView(
                        svgPath: Assets.iconsCommentsIc,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: IconButton(
                      icon: CommonImageView(
                        svgPath: Assets.iconsShareIc,
                      ),
                      onPressed: () {},
                    ),
                  )
                ]),
                CommonImageView(svgPath: Assets.iconsBookmarkIc),
              ],
            )
          ],
        ),
      ),
    );
  }
}
