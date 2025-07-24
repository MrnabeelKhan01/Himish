import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../generated/assets.dart';
import '../../widgets/rich_texts.dart';

class DealsDetails extends StatelessWidget {
  const DealsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              SizedBox(height:18,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: kWhiteColor),
                child: CommonImageView(
                  fit: BoxFit.cover,
                  imagePath: Assets.imagesJuicer,
                  height: 310,
                  width: Get.width,
                  radius: 10,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: CommonImageView(
                              radius: 10,
                              height: 100,
                              width: 100,
                              imagePath: Assets.imagesJuicerOne,
                            ),
                          );
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
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
                            svgPath: Assets.iconsTimerIc,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          MyText(
                            text: "2h",
                            color: kTextGreyColor,
                          ),
                        ],
                      ),
                      MyText(text: "@johnoconner3"),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CommonImageView(svgPath: Assets.iconsShareIc, height: 16),
                          SizedBox(
                            width: 6,
                          ),
                          CommonImageView(
                              svgPath: Assets.iconsBookmarkIc, height: 16)
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: Get.width / 2,
                      child: MyText(
                        text: "Norelco - Rapid Hot Water Kettle",
                        size: 18,
                        weight: FontWeight.w600,
                      )),
                  Column(
                    children: [
                      MyText(
                        text: "\$529.00",
                        size: 18,
                        weight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                      MyText(
                        text: "\$599.99",
                        color: kTextGreyColor,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              MyText(
                text: "Description",
                size: 16,
                weight: FontWeight.w600,
              ),
              SizedBox(
                height: 8,
              ),
              MyText(
                text:
                    "Rapid Ice Making:Our slushy machine is equipped with a 360° rotating propeller cooling cylinder, no ice needed, making rapid ice slush in 15-60 minutes.Providing you and your family with an awesome frozen drink experience",
                color: kTextGreyColor,
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  MyButton(
                    onTap: () {},
                    buttonText: "View On Amazon & Copy Coupon Code",
                    height: 36,
                    radius: 10,
                    width: Get.width / 1.2,
                    fontSize: 14,
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              MyText(text: "Features",size:16,weight:FontWeight.w600,),
              SizedBox(
                height: 18,
              ),
              _rowWidget(
                  text:
                      "Rapid Ice Making:Our slushy machine is equipped with a 360° rotating propeller cooling cylinder, no ice needed, making rapid ice slush in 15-60 minutes.Providing you and your family with an awesome frozen drink experience"),
              _rowWidget(
                  text:
                      "Diverse Drink Creation:Our slushie machine comes with a recipe book, which make it easy to customize beverages.Just pour in the liquid like wine, fruit juices and select the preset mode to make a perfect smoothie.In no time, you'll savor the velvety smoothness and the delightful array of flavors"),
              _rowWidget(
                  text:
                      "Hassle-Free Cleaning:Using the self-cleaning function to free your hands, so you can spend more time with your family. For a deeper clean, just remove the parts and place them in the dishwasher"),
              _rowWidget(
                  text:
                      "Easy To Use&Low noise:STERAYS features a built-in touch screen and six preset modes, which make it easy to create slushy drinks at home,skip your trip to stores! Plus, it operates with minimal noise, ensuring a peaceful environment for you and your family"),
              _rowWidget(
                  text:
                      "Easy To Use&Low noise:STERAYS features a built-in touch screen and six preset modes, which make it easy to create slushy drinks at home,skip your trip to stores! Plus, it operates with minimal noise, ensuring a peaceful environment for you and your family"),
              _rowWidget(
                  text:
                      "High Capacity & Energy-Efficient: Serve your gathering! Our appliance holds up to 68 oz of liquid, sufficient to cater to a family's needs and even for party. Equipped with a robust compressor, it efficiently crafts delectable smoothies in just 15-60 minutes, while minimizing electricity usage"),
              _rowWidget(
                  text:
                      "Important Tips: When preparing juice slushies, ensure that the sugar content is no less than 7%. For alcoholic slushies, the alcohol concentration range 2.8% to 16% is appropriate"),

              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration:
                        BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      MyText(
                        text: "Model number:",
                        size: 14,
                        color: kTextGreyColor,
                      ),

                ],
              ),
                  MyText(
                    text: "R1",
                    weight: FontWeight.w600,
                  )
            ],
          ),
              SizedBox(height:10,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration:
                        BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      MyText(
                        text: "Package Dimensions:",
                        size: 14,
                        color: kTextGreyColor,
                      ),

                    ],
                  ),
                  MyText(
                    text: " 18.1 x 18.1 x 9.1 inches",
                    weight: FontWeight.w600,
                  )
                ],
              ),
              SizedBox(height:18,),
              GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, i) {
                    return Container(
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          CommonImageView(
                            imagePath: Assets.imagesJuicer,
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
                                    MyText(
                                      text: "2m",
                                      size: 10,
                                      color: kTextGreyColor,
                                    ),
                                  ],
                                ),
                                SizedBox(height:4,),
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
                                Row(
                                  children: [
                                    CommonImageView(
                                      svgPath: Assets.iconsBookmarkIc,
                                      height: 17,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CommonImageView(
                                      svgPath: Assets.iconsShareIc,
                                      height: 17,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    MyText(text: "12",size:12,color:kPrimaryColor,weight:FontWeight.w600,),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Expanded(
                                      child: MyButton(
                                        onTap: () {},
                                        buttonText: "Buy Now",
                                        height: 36,
                                        fontSize: 14,
                                        radius: 8,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
              SizedBox(height:18,),
        ]),
      ),
    ));
  }

  Widget _rowWidget({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 6,
            width: 6,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: MyText(
              text: text,
              size: 14,
              color: kTextGreyColor,
            ),
          )
        ],
      ),
    );
  }
}
