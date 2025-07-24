import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_styles.dart';

import '../../../../constant/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../widgets/common_image_widget.dart';
import '../../../widgets/my_text_widget.dart';
import '../../../widgets/rich_texts.dart';

class RunningAdds extends StatelessWidget {
   RunningAdds({super.key});
  final List<String> items = [
    "Windows",
    "Window Replacement",
    "Glass",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:10,),
        Container(
          decoration:kAppBoxDecoration,
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize:MainAxisSize.min,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [

              CommonImageView(
                radius: 8,
                height: 316,
                width: Get.width,
                imagePath: Assets.imagesBusinessCard,
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
              SizedBox(height:10,),
                Row(children: [
                  CommonImageView(
                    svgPath:Assets.iconsEditIc,
                  ),
                  SizedBox(width:4,),
                  MyText(text: "Edit Post",color:kPrimaryColor,)
                ],)
            ],),
          ),
        ),
      ],
    );
  }
}
