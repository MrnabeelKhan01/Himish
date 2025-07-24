import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:himish/view/screens/company/add_new_company.dart';
import 'package:himish/view/screens/company/widgets/social_tags.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/common_image_widget.dart';
import '../../widgets/my_button.dart';
import '../../widgets/my_text_widget.dart';
import 'my_company_details/my_company_details.dart';

class MyCompanies extends StatelessWidget {
  const MyCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("My Companies"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CommonImageView(
                                  height: 80,
                                  width: 80,
                                  imagePath: Assets.imagesCompany,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                          height: 12,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        MyText(
                                          text: "Brooklyn, NY",
                                          size: 10,
                                          color: kTextGreyColor,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        MyText(
                                          decoration: TextDecoration.underline,
                                          text: "+2 others",
                                          size: 10,
                                          color: kPrimaryColor,
                                          weight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        CommonImageView(
                                          svgPath: Assets.iconsContractorIc,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        MyText(
                                          text: "Contractor",
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: kPrimaryColor,
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 18.0),
                                      child: Row(
                                        children: [
                                          CommonImageView(
                                            svgPath: Assets.iconsCFar,
                                          ),
                                          MyText(
                                            text: "Paint & Finishing",
                                            size: 12,
                                            color: kPrimaryColor,
                                            weight: FontWeight.w600,
                                          )
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MyButton(
                              onTap: () {},
                              buttonText: "Contractor",
                              height: 20,
                              width: Get.width / 5,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                            CommonImageView(
                              svgPath: Assets.iconsEditC,
                              height:24,

                            ),
                            SizedBox(
                              height: 10,
                            ),

                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(color: kAppBorderColor),
                                bottom: BorderSide(color: kAppBorderColor),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: Get.width / 4,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(color: kAppBorderColor))),
                                  child: Column(
                                    children: [
                                      MyText(
                                        text: "Post",
                                        size: 10,
                                        weight: FontWeight.w500,
                                        color: kBlackColor,
                                      ),
                                      MyText(
                                        text: "(15)",
                                        size: 10,
                                        weight: FontWeight.w500,
                                        color: kBlackColor,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width / 4,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(color: kAppBorderColor))),
                                  child: Column(
                                    children: [
                                      MyText(
                                        text: "Connections",
                                        size: 10,
                                        weight: FontWeight.w500,
                                        color: kBlackColor,
                                      ),
                                      MyText(
                                        text: "(15)",
                                        size: 10,
                                        weight: FontWeight.w500,
                                        color: kBlackColor,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width / 4,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    children: [
                                      MyText(
                                        text: "Showcase",
                                        size: 10,
                                        weight: FontWeight.w500,
                                        color: kBlackColor,
                                      ),
                                      MyText(
                                        text: "(15)",
                                        size: 10,
                                        weight: FontWeight.w500,
                                        color: kBlackColor,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.end,
                          children: [
                          CommonImageView(
                            svgPath: Assets.iconsTrash,

                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CommonImageView(
                            svgPath: Assets.iconsShareIc,

                          )
                        ],)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        SocialTags(icon: Assets.iconsLike, count: "(32)"),
                        SocialTags(icon: Assets.iconsShareIc, count: "(4)"),
                        SocialTags(icon: Assets.iconsBookmarkIc, count: "(32)"),
                        GestureDetector(
                          onTap:(){
                            Get.to(MyCompanyDetails());
                          },
                          child: CommonImageView(
                            svgPath:Assets.iconsExternal,
                            height:24,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height:10,),
            Bounce(
              onPressed:(){
                Get.to(()=>AddNewCompany());
              },
              duration:Duration(milliseconds:100),
              child: Container(
                height:32,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(30),
                    border:Border.all(color:kPrimaryColor)
                ),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    MyText(text: "Create Company",color:kPrimaryColor,size:12,weight:FontWeight.w600,),
                    SizedBox(width:5,),
                    Icon(Icons.add,color:kPrimaryColor,size:18,)
                  ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
