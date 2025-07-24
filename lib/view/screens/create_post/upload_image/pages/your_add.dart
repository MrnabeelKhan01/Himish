import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/my_text_field.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

class YourAdd extends StatelessWidget {
  const YourAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(

          children: [
            SizedBox(height:18,),
            MyTextField(
              maxLines: 4,
              label:'Ad Details',
              hint:
                  "For example: 3br apartment in NYC, third floor,"
                      " 1200 sq ft, bright living room, close to subway, "
                      "\$3500/month. Contact: John, (123) 456-7890",

            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
              MyText(text: "0/500",size: 12,color:kTextGreyColor,)
            ],)
          ],
        ),
      ),
    );
  }
}
