import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/utils.dart';
import 'package:himish/view/screens/catagories_details/widgets/car_detail_widget.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';

class CarDetails extends StatelessWidget {
  CarDetails({super.key});

  final List<String> _cars = [
    "babysitter",
    "childcare",
    "kids",
    "SUV",
    "AWD",
    "Color",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Nissan Rogue SV AWD"),
      body: SingleChildScrollView(
        physics:BouncingScrollPhysics(),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              SizedBox(height:18,),
              Stack(
                children: [
                  CommonImageView(
                    radius: 10,
                    imagePath: Assets.imagesCar,
                    height: 380,
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                      height: 20,
                      width: 87,
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
                            text: "Cars Used",
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
              SizedBox(height:18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Nissan Rogue SV AWD",
                        size: 16,
                        weight: FontWeight.w600,
                        color: kBlackColor,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          CommonImageView(
                            svgPath: Assets.iconsLocation,
                          ),
                          SizedBox(width:4,),
                          MyText(
                            text: "Lakewood, NJ (71 mi)",
                            size: 12,
                            weight: FontWeight.w500,
                            color: kTextGreyColor,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      MyText(
                        text: "\$11,900",
                        weight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          CommonImageView(
                            svgPath: Assets.iconsTimerIc,
                          ),
                          MyText(
                            text: " 2h",
                            size: 12,
                            weight: FontWeight.w500,
                            color: kTextGreyColor,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height:10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: GridView.builder(
                      itemCount: carDetailsList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.9, crossAxisCount: 4),
                      itemBuilder: (context, i) {
                        return CarDetailWidget(
                            icon: carDetailsList[i].icon,
                            subTitle: carDetailsList[i].subTitle,
                            title: carDetailsList[i].title);
                      }),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    MyText(
                      text: "Keyword",
                      weight: FontWeight.w600,
                    ),
                    SizedBox(width: 12),
                    Row(
                      children: List.generate(_cars.length, (i) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: i == 1 ? kPrimaryColor : kWhiteColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 3),
                              child: MyText(
                                text: _cars[i],
                                size: 10,
                                weight: FontWeight.w500,
                                color: i == 1 ? kWhiteColor : kTextGreyColor,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(height:8,),
              MyText(
                text: "Description",
                size: 16,
                weight: FontWeight.w600,
              ),
              SizedBox(height:4,),
              MyText(
                text:
                    "Nissan Rogue SV AWD is a popular compact SUV trim level known for its balance of features, fuel efficiency, and all-wheel drive capability...",
                color: kTextGreyColor,
              ),
              SizedBox(height:18,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  MyButton(onTap: (){}, buttonText: 'Add Call / Text Phone Number',height:36,radius:10,fontSize:14,width:Get.width/1.5,),
                ],
              ),
              SizedBox(height:18,),
            ],
          ),
        ),
      ),
    );
  }
}
