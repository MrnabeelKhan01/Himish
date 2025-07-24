import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';
import '../../../widgets/common_image_widget.dart';
import '../../../widgets/my_text_widget.dart';

class SocialTags extends StatelessWidget {
  const SocialTags({super.key, required this.icon, required this.count});
final String icon,count;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(8),
          color:kFillColor
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal:6.0,vertical:3),
        child: Row(children: [
          CommonImageView(
            svgPath:icon,
            height:16,
          ),
          SizedBox(width:4,),
          MyText(text:count,size:12,weight:FontWeight.w600,color:kPrimaryColor,)
        ],),
      ),
    );
  }
}
