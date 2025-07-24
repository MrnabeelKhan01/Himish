import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';

class AddCompanyImages extends StatelessWidget {
  const AddCompanyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Add Image"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:10,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: 'Add Multiple Cover Image',
                          size: 16,
                          weight: FontWeight.w600,
                          color:kBlackColor,
                        ),
                      ],
                    ),
                    SizedBox(height:16,),
                    _imageBox('Add Multiple Cover Image 1'),
                    SizedBox(height:16,),
                    _imageBox('Add Multiple Cover Image 2'),
                    SizedBox(height:16,),
                  MyButton(onTap: (){}, buttonText: "Add More",outlineColor:kPrimaryColor,backgroundColor:kAppBGColor,fontColor:kPrimaryColor,height:48,),
                    SizedBox(height:16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   _imageBox("Preview Image",isRow:true),
                   _imageBox("Preview Image",isRow:true),
                   _imageBox("Preview Image",isRow:true),
                  ],
                ),
                    SizedBox(height:16,),
                  ],
                ),
              ),
              MyButton(onTap: (){}, buttonText: "Save"),
              SizedBox(height:10,)
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageBox(String label,{bool isRow=false}) {
    return DottedBorder(
      dashPattern: [5,5],
      borderType: BorderType.RRect, // important!
      radius: Radius.circular(10), // apply corner radius
      color: kPrimaryColor,
      padding: EdgeInsets.zero,
      strokeCap: StrokeCap.butt,
      child: Expanded(
        child: Container(
          decoration:BoxDecoration(
            color:kWhiteColor,
            borderRadius:BorderRadius.circular(10)
          ),

          height: 140,

          child:isRow?Padding(
            padding: const EdgeInsets.symmetric(horizontal:6.0),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              CommonImageView(
                svgPath:Assets.iconsAddImage,
              ),
              MyText(
                text: label,
                size: 12,
                weight: FontWeight.w500,
                color: kPrimaryColor,
              ),
            ],),
          ): Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              CommonImageView(
                svgPath:Assets.iconsAddImage,
              ),
              MyText(
                text: label,
                size: 14,
                weight: FontWeight.w500,
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }



}
