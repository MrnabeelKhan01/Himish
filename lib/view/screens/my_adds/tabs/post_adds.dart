import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';

class PostAdds extends StatelessWidget {
  const PostAdds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
      CommonImageView(
        svgPath:Assets.imagesServerError,
      ),
      MyText(text: "No Ads Found",size:24,weight:FontWeight.w600,color:kBlackColor,),
        SizedBox(height:18,),
        MyButton(onTap: (){}, buttonText: "Back to Home",fontSize:14,width:Get.width/2.5,height:36,radius:8,)
    ],);
  }
}
