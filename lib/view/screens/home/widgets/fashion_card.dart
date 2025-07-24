import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/screens/catagories_details/fashion_details.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';

class FashionCard extends StatelessWidget {
  FashionCard({super.key, required this.labelColor});
  final List<String> _cars=[
    "Wedding",
    "Youthful Gown",
    "Sister of Bride",
  ];
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: GestureDetector(
        onTap:(){
          Get.to(()=>FashionDetails());
        },
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
                              radius:8,
                              imagePath:Assets.imagesWear,
                            ),
                            SizedBox(width:9,),
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration:BoxDecoration(
                                      borderRadius:BorderRadius.circular(4),
                                      color:kGreenColor
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:1),
                                    child: MyText(text: "Rental",color:kWhiteColor,size:12,weight:FontWeight.w500,),
                                  ),
                                ),
                                SizedBox(height:8,),
                                MyText(text: "Youthful gown, sister \nof the bride, floral print",size:12,weight:FontWeight.w600,color:kBlackColor,),
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

                       Container(
                         decoration:BoxDecoration(
                           border:Border(right:BorderSide(color:kAppBorderColor))
                         ),
                         child:Padding(
                           padding: const EdgeInsets.only(right:18.0,left:12),
                           child: Column(children: [
                             MyText(text: "Size",size:11,color:kTextColor,),
                             SizedBox(height:4,),
                             MyText(text: "XL",size:11,color:kBlackColor,weight:FontWeight.w600,),
                           ],),
                         ),
                       ),
                        Container(
                          decoration:BoxDecoration(
                              border:Border(right:BorderSide(color:kAppBorderColor))
                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(right:18.0,left:12),
                            child: Column(children: [
                              MyText(text: "Color",size:11,color:kTextColor,),
                              SizedBox(height:4,),
                              MyText(text: "Brown",size:11,color:kBlackColor,weight:FontWeight.w600,),
                            ],),
                          ),
                        ),
                        Container(
                          decoration:BoxDecoration(
                              border:Border(right:BorderSide(color:kAppBorderColor))
                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(right:18.0,left:12),
                            child: Column(children: [
                              MyText(text: "Fabric",size:11,color:kTextColor,),
                              SizedBox(height:4,),
                              MyText(text: "Chiffon",size:11,color:kBlackColor,weight:FontWeight.w600,),
                            ],),
                          ),
                        ),
                        Container(
                          decoration:BoxDecoration(
                              border:Border(right:BorderSide(color:kAppBorderColor))
                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(right:18.0,left:12),
                            child: Column(children: [
                              MyText(text: "Brand",size:11,color:kTextColor,),
                              SizedBox(height:4,),
                              MyText(text: "Gucci",size:11,color:kBlackColor,weight:FontWeight.w600,),
                            ],),
                          ),
                        ),
                        Container(
                          decoration:BoxDecoration(

                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(right:18.0,left:12),
                            child: Column(children: [
                              MyText(text: "Age",size:11,color:kTextColor,),
                              SizedBox(height:4,),
                              MyText(text: "20-25",size:11,color:kBlackColor,weight:FontWeight.w600,),
                            ],),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height:8,),
                    kAppDivider,
                    SizedBox(height:8,),
                    SingleChildScrollView(
                      clipBehavior:Clip.none,
                      scrollDirection:Axis.horizontal,
                      physics:BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(
                            height:20,
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
                    color:labelColor,
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
      ),
    );
  }
}
