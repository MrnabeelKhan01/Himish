import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key, required this.label, required this.title});
final String label,title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
      MyText(text: label,color:kTextGreyColor,),
      MyText(text: title,weight:FontWeight.w600,),
    ],);
  }
}
