import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

class CarDetailWidget extends StatelessWidget {
  const CarDetailWidget(
      {super.key,
      required this.icon,
      required this.subTitle,
      required this.title});

  final String icon, subTitle, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:40,
          width:40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffE9ECF3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: CommonImageView(
              svgPath: icon,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        MyText(
          text: subTitle,
          size: 10,
          color: kTextGreyColor,
        ),
        SizedBox(
          height: 4,
        ),
        MyText(
          text: title,
          size: 16,
          color: kPrimaryColor,
          weight: FontWeight.w600,
        ),
      ],
    );
  }
}
