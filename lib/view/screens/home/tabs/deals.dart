import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/catagories_details/deals_details.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';
import 'package:himish/view/widgets/rich_texts.dart';

import '../../../../generated/assets.dart';

class DealsTab extends StatelessWidget {
   DealsTab({super.key,this.isBookmark=false});
  bool isBookmark;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,left:16,right:16),
      child: GridView.builder(
          itemCount: 4,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.51,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap:(){
                Get.to(()=>DealsDetails());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CommonImageView(
                          imagePath: Assets.imagesJuicer,
                        ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Column(
                            children: [
                              CommonImageView(
                                svgPath: Assets.iconsShareIc,
                                height: 17,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CommonImageView(
                                svgPath:isBookmark? Assets.iconsBookMarked:Assets.iconsBookmarkIc,
                                height: 17,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "@johnoconner3",
                                size: 10,
                              ),
                              Row(
                                children: [
                                  CommonImageView(
                                    svgPath: Assets.iconsTimerIc,
                                    height: 12,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  MyText(
                                    text: "2m",
                                    size: 10,
                                    color: kTextGreyColor,
                                  )
                                ],
                              ),
                            ],
                          ),
                          MyText(
                            text: "Norelco - Rapid Hot Water Kettle",
                            size: 12,
                            weight: FontWeight.w600,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Texts(children: [
                            TextSpan(
                                text:
                                    "Little People Barbie Toddler Toy, Magnetic Drawing Board Kids... ",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: kTextGreyColor)),
                            TextSpan(
                                text: "Read more",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                    color: kPrimaryColor))
                          ]),
                          Divider(
                            color: kAppBGColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Regular Price",
                                size: 10,
                                weight: FontWeight.w500,
                                color: kTextGreyColor,
                              ),
                              MyText(
                                text: "\$529.99",
                                size: 10,
                                weight: FontWeight.w400,
                                color: kTextGreyColor,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Only",
                                size: 14,
                                weight: FontWeight.w500,
                                color: kPrimaryColor,
                              ),
                              MyText(
                                text: "\$529.99",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          MyButton(
                            onTap: () {},
                            buttonText: "Buy Now",
                            height: 36,
                            fontSize: 14,
                            radius: 8,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
