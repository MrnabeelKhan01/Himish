import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/view/screens/company/add_company_info.dart';
import 'package:himish/view/screens/company/add_image.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_field.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';

class AddNewCompany extends StatelessWidget {
  const AddNewCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppbar("Add New Company"),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(children: [
                SizedBox(height:10,),
                Stack(
                  children: [
                    CommonImageView(
                      imagePath:Assets.imagesCompanyBanner,
                    ),
                    Positioned(
                      right:6,
                      top:6,
                      child: GestureDetector(
                        onTap:(){
                          Get.to(()=>AddCompanyImages());
                        },
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              border:Border.all(color:kWhiteColor,width:0.5),
                              color:kPrimaryColor
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CommonImageView(
                              svgPath:Assets.iconsEditBanner,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Transform.translate(
                  offset: Offset(0, -20),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          CommonImageView(
                            height:100,
                            width:100,
                            radius:100,
                            imagePath:Assets.imagesCompanyProfile,
                          ),
                          Positioned(
                            right:0,
                            bottom:0,
                            child: Container(
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(10),
                                  border:Border.all(color:kWhiteColor,width:0.5),
                                  color:kPrimaryColor
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CommonImageView(
                                  svgPath:Assets.iconsCamera,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                MyTextField(label:"Company Name",hint:"ABC Company",),
                MyTextField(label:"example@gmail.com",hint:"Email Address",),
                MyTextField(label:"Phone Number",hint:"+1 00 000 0000",),
                MyTextField(label:"Your website",hint:"www.example.com/companies",),
              ],),
            ),
            SafeArea(child: MyButton(onTap: (){
              Get.to(()=>AddCompanyInfo());
            }, buttonText: "Next")),
            SizedBox(height:10,),
          ],
        ),
      ),

    );
  }
}
