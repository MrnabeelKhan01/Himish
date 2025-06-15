import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import 'common_image_widget.dart';
import 'my_text_widget.dart';

class SocialLogin extends StatelessWidget {
   SocialLogin({super.key, required this.logo, required this.title,required this.onTapped});
final String logo;
final String title;
VoidCallback onTapped;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTapped,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            border: Border.all(color: kAppBorderColor, ),
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImageView(
              imagePath: logo,
              height:24,
            ),
            SizedBox(
              width: 6,
            ),
            MyText(
              text: title,
              size: 13,
              color: kTextColor,
              weight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
