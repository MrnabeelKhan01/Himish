
import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import 'my_button.dart';
import 'my_text_widget.dart';


Future<void> showCustomDialog({
  required BuildContext context,
  String? title,
  String? subtitle,
  String? image,
  String? confirmText,
  String? cancelText,
  required VoidCallback  onTap,
  Color? confirmColor,
  bool isSubTitle=true,
  bool isSpace=false,
  String ?skipText,
}) {
  return showDialog(
    context: context,
    // barrierColor:kAppPrimaryColor.withOpacity(0.5),
    barrierDismissible: false, // Prevent dismiss on tap outside
    builder: (BuildContext context) {
      return Dialog(
        insetPadding:EdgeInsets.symmetric(horizontal:18),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 0),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height:18,),
              if (image != null) ...[
                Image.asset(
                  image,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
              ],
              MyText(text:  title ?? 'Verification Successful',size:20,weight:FontWeight.w700,textAlign:TextAlign.center,),
              const SizedBox(height: 10),
              isSubTitle? MyText(
               textAlign:TextAlign.center,
               lineHeight:2,
               size:14,
               text:  subtitle ??
                 '',
               color:kTextColor,
             ):SizedBox(),
            isSubTitle?  const SizedBox(height: 20):SizedBox(),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:12.0),
               child: MyButton(onTap:onTap, buttonText: confirmText ?? "",fontColor:kWhiteColor,),
             ),
              SizedBox(height:10,),
              isSpace?MyButton(onTap: (){
              }, buttonText:skipText??"Skip",backgroundColor:Colors.white,fontColor:kTextColor,):SizedBox(),
            ],
          ),
        ),
      );
    },
  );
}
