import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/home/home_details.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';
import 'package:himish/view/widgets/rich_texts.dart';

import '../../../../generated/assets.dart';

class BusinessTab extends StatelessWidget {
  BusinessTab({super.key});

  final List<String> items = [
    "Windows",
    "Window Replacement",
    "Glass",
  ];

  final List<Color> tagColors = [
    kPrimaryColor,
   kBlueColor,
    kGreenColor
  ];
final List<String> _images=[
  Assets.imagesBusinessCard,
  Assets.imagesCardTwo,
  Assets.imagesCardThree,
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, i) {
        return GestureDetector(
          onTap:(){
            Get.to(
              HomeDetails(image:_images[i])
            );
          },
          child: Container(
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
                          imagePath: _images[i],
                        ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: tagColors[i], // color changes by index
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        CommonImageView(
                          svgPath: Assets.iconsFavouriteIc,
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
          ),
        );
      },
    );
  }
}
