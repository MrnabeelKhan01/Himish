import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../generated/assets.dart';

class SubmissionSubmitted extends StatelessWidget {
  const SubmissionSubmitted({super.key});

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      backgroundColor:kWhiteColor,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize:MainAxisSize.min,
          children: [
            SizedBox(height:10,),
          CommonImageView(
            svgPath:Assets.imagesReportSubmitted,
          ),
          MyText(
            textAlign:TextAlign.center,
            text: "Thank you for using \nHimish.",size:20,weight:FontWeight.w600,color:kBlackColor,),
          MyText(
            textAlign:TextAlign.center,
            text: "We’ve received your submission and will notify you with updates shortly.",size:12,),
            SizedBox(height:10,),
        ],),
      ),
    );
  }
}
