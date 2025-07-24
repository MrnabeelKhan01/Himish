import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';
import '../../widgets/my_button.dart';


class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      mainAxisSize:MainAxisSize.min,
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 5,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kFillColor,
              ),
            ),
          ],
        ),
        SizedBox(height:10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  MyText(text: "Are you sure you want to \nlog out?",size:20,weight:FontWeight.w600,color:kBlackColor,textAlign:TextAlign.center,),
                ],
              ),
              SizedBox(height:12,),
              MyText(text: "You’ll need to sign in again to access \nyour account.",size:12,color:kBlackColor,textAlign:TextAlign.center,),
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
                  buttonText: "No, Just Kidding",

                  backgroundColor: kWhiteColor,
                  outlineColor: kPrimaryColor,
                  fontColor: kPrimaryColor ,),
              ),
              SizedBox(width:12,),
              Expanded(
                child: MyButton(onTap: () {},
                  buttonText: "Logout",
                  height:45,

                ),
              )
            ],),
          ),
        ),
      ],);
  }
}
