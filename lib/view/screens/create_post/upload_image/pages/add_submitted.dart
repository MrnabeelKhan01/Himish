import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/payment.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../../generated/assets.dart';

class AddSubmitted extends StatelessWidget {
  const AddSubmitted({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              decoration: kAppBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: kFillColor),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CommonImageView(
                          height:30,
                          svgPath: Assets.imagesVerify,
                        ),
                      ),
                    ),
                    SizedBox(height:12,),
                    MyText(
                      textAlign: TextAlign.center,
                      text: "Your ad has been\nsubmitted!",
                      size: 16,
                      weight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                    SizedBox(height:4,),
                    MyText(
                      textAlign:TextAlign.center,
                      text:
                          "We've received your ad. You can post another or view your ads anytime.",
                      size: 12,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(height:12,),
                    MyButton(onTap: (){
                      Get.to(()=>Payment());
                    }, buttonText: "Pay Now",height:40,fontSize:14,),
                    MyButton(onTap: (){}, buttonText: "Post another ad",height:40,fontSize:14,backgroundColor:kFillColor,fontColor:kPrimaryColor,),
                  ],
                ),
              ),
            ),
          )
        ],
    );
  }
}
