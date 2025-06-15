// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';

// ignore: must_be_immutable
class Texts extends StatelessWidget {
  Texts({super.key, required this.children,this.textAlign});
  List<InlineSpan> children;
  TextAlign ?textAlign;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign:textAlign??TextAlign.start,
        text: TextSpan(children: children,style:TextStyle( fontFamily: "Montserrat",color:kBlackColor)));
  }
}
