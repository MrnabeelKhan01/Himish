import 'package:flutter/material.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';

class OnSaleDetails extends StatelessWidget {
  const OnSaleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          physics:BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 18,
              ),
              CommonImageView(
                imagePath: Assets.imagesOnSale,
                height:380,
                radius:10,
              ),
              SizedBox(
                height: 14,
              ),
              MyText(
                text: "Moshe's Supermarket",
                size: 16,
                weight: FontWeight.w700,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CommonImageView(
                            svgPath: Assets.iconsSpecial,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          MyText(
                            text: "22 Specials",
                            size: 14,
                            weight: FontWeight.w500,
                            color: kTextGreyColor,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CommonImageView(
                            svgPath: Assets.iconsStoreLoc,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Row(
                            children: [
                              MyText(
                                text: "Brooklyn, NY \u2022 ",
                                size: 14,
                                weight: FontWeight.w500,
                                color: kTextGreyColor,
                              ),
                              MyText(
                                text: "08 mi. away",
                                size: 12,
                                weight: FontWeight.w400,
                                color: kTextGreyColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffBAC5DB)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3),
                          child: MyText(
                            text: "Grocery",
                            size: 10,
                            weight: FontWeight.w500,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          MyText(
                            text: "Valid till ",
                            size: 14,
                            weight: FontWeight.w500,
                            color: kTextGreyColor,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          MyText(
                            text: "Apr 29",
                            size: 14,
                            weight: FontWeight.w600,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              MyText(
                text: "Description",
                size: 16,
                weight: FontWeight.w600,
              ),
              MyText(
                text:
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout...",
                color: kTextGreyColor,
              ),
              SizedBox(height:8,),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 9,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing:10,
                      mainAxisSpacing:10,
                      crossAxisCount: 3, childAspectRatio: 1.5),
                  itemBuilder: (context, i) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kWhiteColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Shwartz",
                            color: kTextGreyColor,
                            size: 10,
                            weight: FontWeight.w500,
                          ),
                          SizedBox(height:4,),
                          MyText(
                            text: "Triple Strong...",
                            size: 10,
                            weight: FontWeight.w500,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(
                                text: "\$4.29",
                                size: 10,
                                weight: FontWeight.w500,
                                color: kRedColor,
                              ),
                              SizedBox(width:10,),
                              MyText(
                                text: "\$3.99",
                                size: 12,
                                weight: FontWeight.w500,
                                color: kGreenColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
