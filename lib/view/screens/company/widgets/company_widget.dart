import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/company/company_details.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: GestureDetector(
        onTap:(){
          Get.to(()=>CompanyDetails());
        },
        child: Container(
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CommonImageView(
                              height: 80,
                              width: 80,
                              imagePath: Assets.imagesCompany,
                            ),
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "Sharp Security Systems",
                                  size: 12,
                                  weight: FontWeight.w600,
                                  color: kBlackColor,
                                ),
                                Row(
                                  children: [
                                    CommonImageView(
                                      svgPath: Assets.iconsLocationIc,
                                      height:12,
                                    ),
                                    SizedBox(width:3,),
                                    MyText(
                                      text: "Brooklyn, NY",
                                      size: 10,
                                      color: kTextGreyColor,
                                    ),
                                    SizedBox(width:12,),
                                    MyText(
                                      decoration:TextDecoration.underline,
                                      text: "+2 others",
                                      size: 10,
                                      color: kPrimaryColor,
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(height:4,),
                                Row(
                                  children: [
                                    CommonImageView(
                                      svgPath: Assets.iconsContractorIc,
                                    ),
                                    SizedBox(width:3,),
                                    MyText(
                                      text: "Contractor",
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: kPrimaryColor,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:18.0),
                                  child: Row(
                                    children: [
                                      CommonImageView(
                                        svgPath: Assets.iconsCFar,
                                      ),
                                      MyText(text: "Paint & Finishing",size:12,color:kPrimaryColor,weight:FontWeight.w600,)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.end,
                      children: [
                      MyButton(onTap: (){}, buttonText: "Contractor",height:20,width:Get.width/5,fontSize:10,fontWeight:FontWeight.w500,),
                      Row(children: [
                        CommonImageView(
                          svgPath:Assets.iconsRattingIc,
                        ),
                        MyText(text: "4.5 ",color:kBlackColor,size:12,weight:FontWeight.w600,),
                        MyText(text: "(14K)",color:kTextGreyColor,size:12,),
                      ],),
                        SizedBox(height:6,),
                      CommonImageView(
                        svgPath:Assets.iconsBookmarkIc,
                        height:20,
                      )
                    ],)
                  ],
                ),
                SizedBox(height:12,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    width:Get.width/6,
                    decoration:BoxDecoration(
                      border:Border(right:BorderSide(color:kAppBorderColor))
                    ),
                    child:Column(children: [
                      MyText(text: "Post",size:10,weight:FontWeight.w500,color:kBlackColor,),
                      MyText(text: "(15)",size:10,weight:FontWeight.w500,color:kBlackColor,),
                    ],),
                  ),
                  Container(
                    width:Get.width/6,
                    decoration:BoxDecoration(

                    ),
                    child:Column(children: [
                      MyText(text: "Showcase",size:10,weight:FontWeight.w500,color:kBlackColor,),
                      MyText(text: "(15)",size:10,weight:FontWeight.w500,color:kBlackColor,),
                    ],),
                  ),
                  Container(
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:kFillColor
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal:6.0,vertical:3),
                      child: Row(children: [
                        CommonImageView(
                          svgPath:Assets.iconsLike,
                        ),
                        SizedBox(width:4,),
                        MyText(text: "(32)",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                    ),
                  ),
                  Container(
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(8),
                        color:kFillColor
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal:6.0,vertical:3),
                      child: Row(children: [
                        CommonImageView(
                          height:14,
                          svgPath:Assets.iconsShareIc,
                        ),
                        SizedBox(width:4,),
                        MyText(text: "(04)",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                    ),
                  ),
                  Container(
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(8),
                        color:kFillColor
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal:6.0,vertical:3),
                      child: Row(children: [
                        CommonImageView(
                          svgPath:Assets.iconsBookmarkIc,
                          height:16,
                        ),
                        SizedBox(width:4,),
                        MyText(text: "(04)",size:12,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],),
                    ),
                  ),
                ],),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
