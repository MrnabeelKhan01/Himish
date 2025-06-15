import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key, required this.icon, required this.name});

  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          height:38,
          width:38,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: kWhiteColor),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CommonImageView(
              svgPath: icon,
            ),
          ),
        ),
        SizedBox(height:4,),
        MyText(
          text: name,
          color: kPrimaryColor,
          weight: FontWeight.w600,
          size: 12,
        )
      ],
    );
  }
}
