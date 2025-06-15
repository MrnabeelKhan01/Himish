import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';

class ListeningCard extends StatelessWidget {
   ListeningCard({super.key, required this.labelColor});
final List<String> _cars=[
  "Used Car",
  "Low Milage",
  "Nissan",
  "SUV",
  "AWD",
];
final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Stack(
        children: [
          Container(
            decoration:BoxDecoration(
              color:kWhiteColor,
              borderRadius:BorderRadius.circular(8),
            ),
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: [
                        CommonImageView(
                          height:70,
                          width:120,
                          imagePath:Assets.imagesCar,
                        ),
                        SizedBox(width:9,),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(4),
                                  color:kRedColor
                              ),
                              child:Padding(
                                padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:1),
                                child: MyText(text: "For Sale",color:kWhiteColor,size:12,weight:FontWeight.w500,),
                              ),
                            ),
                            SizedBox(height:8,),
                            MyText(text: "Nissan Rogue SV AWD",size:12,weight:FontWeight.w600,color:kBlackColor,),
                            SizedBox(height:3,),
                            Row(
                              children: [
                                CommonImageView(
                                  svgPath:Assets.iconsLocation,
                                ),
                                MyText(text: "Lakewood, NJ (71 mi)",size:12,weight:FontWeight.w500,color:kTextGreyColor,)
                              ],
                            ),
          
                          ],),
                      ],
                    ),
          
                    Row(children: [
                      CommonImageView(svgPath: Assets.iconsTimerIc),
                      SizedBox(width: 4),
                      MyText(
                        text: "2h",
                        size: 12,
                        color: kTextColor,
                      ),
                      SizedBox(width:12,),
                      CommonImageView(
                        svgPath:Assets.iconsMoreIc,
                      ),
                    ])
                  ],),
                  SizedBox(height:8,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        CommonImageView(
                          svgPath:Assets.iconsCalender,
                        ),
                        SizedBox(width:10,),
                        MyText(text: "2012",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                      Row(children: [
                        Container(
                          width:1,
                          height:16,
                          color:kAppBorderColor,
                        ),
                        SizedBox(width:3,),
                        CommonImageView(
                          svgPath:Assets.iconsCarColor,
                        ),
                        SizedBox(width:10,),
                        MyText(text: "Gray",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                      Row(children: [
                        Container(
                          width:1,
                          height:16,
                          color:kAppBorderColor,
                        ),
                        SizedBox(width:3,),
                        CommonImageView(
                          svgPath:Assets.iconsGauge,
                        ),
                        SizedBox(width:10,),
                        MyText(text: "7,500",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                      Row(children: [
                        Container(
                          width:1,
                          height:16,
                          color:kAppBorderColor,
                        ),  SizedBox(width:3,),
                        CommonImageView(
                          svgPath:Assets.iconsCondition,
                        ),
                        SizedBox(width:10,),
                        MyText(text: "Mint",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                      Row(children: [
                        Container(
                          width:1,
                          height:16,
                          color:kAppBorderColor,
                        ),
                        SizedBox(width:3,),
                        MyText(text: "\$11,900",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                    ],
                  ),
                  kAppDivider,
                  SingleChildScrollView(
                    clipBehavior:Clip.none,
                    physics:BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        SizedBox(
                          height:20,
                          child: Expanded(
                            child: ListView.builder(
                              itemCount:_cars.length,
                                shrinkWrap:true,
                                scrollDirection:Axis.horizontal,
                                itemBuilder: (context,i){
                              return Padding(
                                padding: const EdgeInsets.only(right:8.0),
                                child: Container(
                                  height:18,
                                  decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(8),
                                    color:i==1?kPrimaryColor:Color(0xffE9ECF3)
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:6.0,vertical:3),
                                    child: MyText(text:_cars[i],size:10,weight:FontWeight.w500, color:i==1?kWhiteColor:kTextGreyColor),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(width:8,),
                        CommonImageView(
                          svgPath:Assets.iconsShareIc,
                          height:16,
                        ),
                        SizedBox(width:12,),
                        CommonImageView(
                          height:16,
                          svgPath:Assets.iconsBookmarkIc,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top:20,
            child: Container(
              height:18,
              width:87,
              decoration:BoxDecoration(
                color:kPrimaryColor,
                borderRadius:BorderRadius.only(
                  topRight:Radius.circular(100),
                  bottomRight:Radius.circular(100),
                )
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  MyText(text: "Cars Used",size:12,weight:FontWeight.w500,color:kWhiteColor,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
