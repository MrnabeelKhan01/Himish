import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';

class RealStateCard extends StatelessWidget {
  RealStateCard({super.key, required this.labelColor});
  final List<String> _cars=[
    "House",
    "Real Estate",
    "Architect",
    "Buildings",
    "Furniture",
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
                            imagePath:Assets.imagesRealState,
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
                              MyText(text: "2BR Apartment - Prime",size:12,weight:FontWeight.w600,color:kBlackColor,),
                              SizedBox(height:3,),
                              Row(
                                children: [
                                  CommonImageView(
                                    svgPath:Assets.iconsLocation,
                                  ),
                                  SizedBox(width:4,),
                                  MyText(text: "3182 August Lane..",size:12,weight:FontWeight.w500,color:kTextGreyColor,)
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
                        Container(
                          width:1,
                          height:16,
                          color:kAppBorderColor,
                        ),
                        SizedBox(width:3,),
                        CommonImageView(
                          svgPath:Assets.iconsBed,
                        ),
                        SizedBox(width:10,),
                        MyText(text: "2",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                      Row(children: [
                        Container(
                          width:1,
                          height:16,
                          color:kAppBorderColor,
                        ),
                        SizedBox(width:3,),
                        CommonImageView(
                          svgPath:Assets.iconsWashroom,
                        ),
                        SizedBox(width:10,),
                        MyText(text: "3",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                      Row(children: [
                        Container(
                          width:1,
                          height:16,
                          color:kAppBorderColor,
                        ),  SizedBox(width:3,),
                        CommonImageView(
                          svgPath:Assets.iconsMachine,
                        ),
                        SizedBox(width:10,),
                        MyText(text: "W/D",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                      Row(children: [
                        CommonImageView(
                          svgPath:Assets.iconsFloor,
                        ),
                        SizedBox(width:10,),
                        MyText(text: "3",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                      Row(children: [
                        Container(
                          width:1,
                          height:16,
                          color:kAppBorderColor,
                        ),
                        SizedBox(width:3,),
                        MyText(text: "\$885,000",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                    ],
                  ),
                  kAppDivider,
                  SingleChildScrollView(
                    clipBehavior:Clip.none,
                    scrollDirection:Axis.horizontal,
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
                  color:kBlueColor,
                  borderRadius:BorderRadius.only(
                    topRight:Radius.circular(100),
                    bottomRight:Radius.circular(100),
                  )
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  MyText(text: "Real Estate",size:12,weight:FontWeight.w500,color:kWhiteColor,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
