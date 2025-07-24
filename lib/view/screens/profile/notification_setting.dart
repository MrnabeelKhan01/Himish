import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppbar("Notification Setting"),
      body:Column(children: [
        SizedBox(height:10,),
        Padding(
          padding: const EdgeInsets.only(left:16.0,right:4),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
            MyText(text: "Push Notifications",weight:FontWeight.w600,),
            Transform.scale(
              scale:0.6,
                child: CupertinoSwitch(
                    activeColor:kPrimaryColor,
                    inactiveTrackColor:kFillColor,
                    value: true, onChanged: (val){}))
          ],),
        )
      ],),
    );
  }
}
