import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../generated/assets.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Notification"),
      body: SingleChildScrollView(
        physics:BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonImageView(
                    svgPath: Assets.iconsReadIc,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  MyText(
                    text: "Mark as All Read",
                    weight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(height:18,),
            ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0,vertical:5),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kWhiteColor),
                      child: Padding(
                        padding: const EdgeInsets.only(top:12.0,left:16,right:16,bottom:12),
                        child: Row(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: kAppBGColor),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CommonImageView(
                                  svgPath: Assets.iconsCard,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      size:14,
                                                            text:
                                      "You have a new booking request for your apartment in New York, USA",
                                                            weight: FontWeight.w500,

                                                          ),
                                    MyText(text: "1 h",color:kTextGreyColor,)
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
