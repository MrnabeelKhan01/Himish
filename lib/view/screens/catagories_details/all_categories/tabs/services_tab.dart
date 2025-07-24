import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constant/app_colors.dart';
import '../../../../../constant/app_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../widgets/common_image_widget.dart';
import '../../../../widgets/my_text_widget.dart';

class ServicesTab extends StatelessWidget {
  ServicesTab({super.key});

  final List<String> _cars = [
    "Used Car",
    "Low Milage",
    "Nissan",
    "SUV",
    "AWD",
  ];
  Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CommonImageView(
                                  height: 114,
                                  width: 120,
                                  radius: 4,
                                  imagePath: Assets.imagesEvents,
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: kPrimaryColor),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 1),
                                        child: MyText(
                                          text: "Get Ticket",
                                          color: kWhiteColor,
                                          size: 12,
                                          weight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width:Get.width/2.5,
                                        child: MyText(
                                      text: "GreenTech Innovation Summit 2025",
                                      size: 12,
                                      weight: FontWeight.w600,
                                      color: kBlackColor,
                                    )),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        CommonImageView(
                                          svgPath: Assets.iconsLocation,
                                        ),
                                        MyText(
                                          text: "3182 San Francisco, CA",
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: kTextGreyColor,
                                        )
                                      ],
                                    ),
                                    MyText(text: "Experience the magic of \nBroadway under the stars \n... Read more",size:10,)
                                  ],
                                ),
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
                              SizedBox(
                                width: 12,
                              ),
                              CommonImageView(
                                svgPath: Assets.iconsMoreIc,
                              ),
                            ])
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                       Row(
                         mainAxisAlignment:MainAxisAlignment.spaceBetween,
                         children: [
                         Column(
                           children: [
                             MyText(text: "Time",size:10,weight:FontWeight.w500,color:kTextGreyColor,),
                             MyText(text: "10:00 AM – 6:00 PM",size:10,weight:FontWeight.w600,color:kPrimaryColor,)
                           ],
                         ),
                         Column(
                           children: [
                             MyText(text: "Date",size:10,weight:FontWeight.w500,color:kTextGreyColor,),
                             MyText(text: "September 15, 2025",size:10,weight:FontWeight.w600,color:kPrimaryColor,)
                           ],
                         ),
                         Column(
                           children: [
                             MyText(text: "Ticket Price",size:10,color:kRedColor,),
                             MyText(text: "From \$45",size:10,weight:FontWeight.w600,color:kPrimaryColor,)
                           ],
                         )
                       ],),
                        SizedBox(
                          height: 8,
                        ),
                        kAppDivider,
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 20,
                          child: Expanded(
                            child: ListView.builder(
                                itemCount: _cars.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, i) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                      height: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: i == 1
                                              ? kPrimaryColor
                                              : Color(0xffE9ECF3)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6.0, vertical: 3),
                                        child: MyText(
                                            text: _cars[i],
                                            size: 10,
                                            weight: FontWeight.w500,
                                            color: i == 1
                                                ? kWhiteColor
                                                : kTextGreyColor),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Container(
                    height: 18,
                    width: 70,
                    decoration: BoxDecoration(
                        color: kBlueColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: "Events",
                          size: 12,
                          weight: FontWeight.w500,
                          color: kWhiteColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
