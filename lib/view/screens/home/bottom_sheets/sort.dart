import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';
import '../../../widgets/my_button.dart';

class SortSheet extends StatelessWidget {
  const SortSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      mainAxisSize:MainAxisSize.min,
      children: [
      Padding(
        padding: const EdgeInsets.only(left:18.0,right:8),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CommonImageView(
                  height:20,
                  svgPath:Assets.iconsSort,
                  svgColor:kBlackColor,
                ),
                SizedBox(width:8,),
                MyText(text: "Sort By",size:20,weight:FontWeight.w600,),
              ],
            ),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.close,color:kPrimaryColor,))
          ],
        ),
      ),
     SizedBox(height:10,),
     kAppDivider,
        SizedBox(height:10,),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal:16.0),
       child: Column(
         crossAxisAlignment:CrossAxisAlignment.start,
         children: [
         MyText(text: "Price Low to High",size:16,weight:FontWeight.w600,color:kBlackColor,),
         SizedBox(height:12,),
         MyText(text: "Price High to Low",size:16,weight:FontWeight.w600,color:kBlackColor,),
         SizedBox(height:12,),
         MyText(text: "New",size:16,weight:FontWeight.w600,color:kBlackColor,),
         SizedBox(height:12,),
         MyText(text: "Popular",size:16,weight:FontWeight.w600,color:kBlackColor,),
         SizedBox(height:12,),
       ],),
     ),
      Container(
        decoration:BoxDecoration(
            color: kWhiteColor,
            border:Border(top:BorderSide(color:kAppBorderColor))
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:18.0,bottom:10,right:16,left:16),
          child: Row(children: [
            Expanded(
              child: MyButton(
                height:45,
                onTap: () {},
                buttonText: "Cancel",

                backgroundColor: kWhiteColor,
                outlineColor: kPrimaryColor,
                fontColor: kPrimaryColor ,),
            ),
            SizedBox(width:12,),
            Expanded(
              child: MyButton(onTap: () {},
                buttonText: "Apply sort",
                height:45,

              ),
            )
          ],),
        ),
      ),
    ],);
  }
}
