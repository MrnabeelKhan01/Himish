import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_field.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';

class SelectLocation extends StatelessWidget {
   SelectLocation({super.key});
final TextEditingController _controller=TextEditingController(text:"New York, USA");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:SafeArea(
        child: Container(
          decoration:BoxDecoration(
              shape:BoxShape.circle,
              color:kWhiteColor
          ),
          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: CommonImageView(
              svgPath:Assets.iconsPickLoc,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor:kWhiteColor,
        titleSpacing:10,
        elevation:0,
        leading:IconButton(onPressed: () {
          Get.back();
        }, icon: Padding(
            padding: const EdgeInsets.all(5.0),
            child:SvgPicture.asset(Assets.iconsBackIcon,)
        )),
        centerTitle:true,
        title: MyText(
          text: "Select Location",
          color:kBlackColor,
          size: 16,
          weight: FontWeight.w600,
        ),
        actions: [
          TextButton(onPressed: () {  },
          child: MyText(text: "Save",weight:FontWeight.w600,color:kPrimaryColor,size:16,))
        ],
      ),
      body:Container(
        width:Get.width,
    decoration:BoxDecoration(
    image:DecorationImage(image: AssetImage("assets/images/google_map.png"),fit:BoxFit.cover)
    ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Column(children: [
            MyTextField(hint:"New York, USA",
              controller:_controller,
              suffixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.close,color:kPrimaryColor,)),
              prefixIcon:Padding(
              padding: const EdgeInsets.all(12.0),
              child: CommonImageView(
                height:20,
                svgPath:Assets.iconsLocationIc,
                svgColor:kPrimaryColor,
              ),
            ),),

          ],),
        ),
      ));
  }
}
