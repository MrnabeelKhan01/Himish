import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/generated/assets.dart';
import 'package:himish/view/screens/catagories_details/job_details.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';
import 'package:himish/view/widgets/rich_texts.dart';

class EventsCard extends StatelessWidget {
   EventsCard({super.key,this.isBookmark=false});
   bool isBookmark;
   final List<String> _cars=[
    "Used Car",
    "Low Milage",
    "Nissan",
    "SUV",
    "AWD",
  ];
   Color ?labelColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: GestureDetector(
        onTap:(){
          Get.to(()=>JobFairDetails());
        },
        child: Container(
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
                          imagePath: Assets.imagesEventsBanner,
                          height: 72,
                          width: 94,
                        ),
                        SizedBox(width:10,),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            MyText(text: "Tech Skills Bootcamp",size:12,weight:FontWeight.w700,),
                            Row(
                              children: [
                                CommonImageView(
                                  svgPath: Assets.iconsEventCalender,
                                ),
                                SizedBox(width:4,),
                                MyText(
                                  text: "June 15, 2025    3:45pm",
                                  size: 10,
                                  weight: FontWeight.w500,
                                  color: kTextGreyColor,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CommonImageView(
                                  svgPath: Assets.iconsEventCalender,
                                ),
                                SizedBox(width:4,),
                                MyText(
                                  text: "June 15, 2025    3:45pm",
                                  size: 10,
                                  weight: FontWeight.w500,
                                  color: kTextGreyColor,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Texts(children: [
                                  TextSpan(
                                    text:"Host name:"
                                        ,style:TextStyle(fontSize:10,fontWeight:FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text:"Sam Gorden"
                                    ,style:TextStyle(fontSize:10,fontWeight:FontWeight.w700),
                                  )
                                ])
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment:CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: kGreenColor),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:3),
                            child: MyText(
                              text: "Workshop",
                              size: 10,
                              weight: FontWeight.w500,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                        SizedBox(height:10,),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.end,
                          children: [
                            CommonImageView(
                              svgPath: Assets.iconsShareIc,
                              height:17,
                            ),
                            SizedBox(height:10,),
                            CommonImageView(
                              svgPath:isBookmark? Assets.iconsBookMarked:Assets.iconsBookmarkIc,
                              height:17,
                            )
                          ],
                        ),

                      ],
                    ),
                  ],
                ),

                SizedBox(height:4,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [
                        CommonImageView(
                          svgPath:Assets.iconsLocationIc,
                        ),
                        SizedBox(width:6,),
                        MyText(
                          text: "Brooklyn Tech Hub",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kTextGreyColor,
                        ),


                      ],
                    ),
                    Row(
                      children: [
                        CommonImageView(
                          svgPath:Assets.iconsTimerIc,
                        ),
                        SizedBox(width:4,),
                        MyText(
                          text: "1 h",
                          size: 10,
                          weight: FontWeight.w600,
                          color:kTextGreyColor,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height:8,),
                kAppDivider,
                SizedBox(height:8,),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
