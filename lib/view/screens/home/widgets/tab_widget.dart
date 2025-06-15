import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';
import '../../../widgets/my_text_widget.dart';

class TabWidget extends StatelessWidget {
   TabWidget({super.key,this.title,this.isSelected=true});
String?title;
bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? kSecondaryColor : kWhiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            MyText(
              text: title!,
              size: 12,
              weight: FontWeight.w600,
              color: isSelected ? kWhiteColor : kTextGreyColor,
            ),
            const SizedBox(width: 6),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kWhiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: MyText(
                  text: '08',
                  size: 10,
                  weight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  color: isSelected ? kBlackColor : kTextGreyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
