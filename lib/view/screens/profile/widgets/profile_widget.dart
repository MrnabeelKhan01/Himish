import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';

class ProfileWidget extends StatelessWidget {
   ProfileWidget(
      {super.key,
      required this.icon,
      required this.title,
        this.isShowBorder=true,
      required this.onPressed});

  final String icon, title;
  VoidCallback onPressed;
bool isShowBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color:isShowBorder?kAppBorderColor:kWhiteColor),)),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height:40,
                  width:40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    color:Color(0xffF2F2F2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CommonImageView(
                      svgPath: icon,
                    ),
                  ),
                ),
                SizedBox(width:16,),
                MyText(
                  text: title,
                  weight: FontWeight.w500,
                  color: kBlackColor,
                )
              ],
            ),
            CommonImageView(
              svgPath: Assets.iconsFarIc,
            )

          ],
        ),
      ),
    );
  }
}
