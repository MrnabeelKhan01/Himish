
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../constant/app_colors.dart';
import '../../generated/assets.dart';
import 'my_text_widget.dart';

customAppbar(String title){
  return AppBar(
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
      text: title,
      color:kBlackColor,
      size: 16,
      weight: FontWeight.w600,
    ),
  );
}