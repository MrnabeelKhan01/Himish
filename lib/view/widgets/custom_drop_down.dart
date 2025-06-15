import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../constant/app_colors.dart';
import '../../generated/assets.dart';
import 'common_image_widget.dart';
import 'my_text_widget.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    super.key,
    required this.label,
    required this.hint,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.mBottom,
  });

  final List<dynamic> items;
  final String selectedValue;
  final ValueChanged<dynamic> onChanged;
  final String hint;
  final String label;
  double? mBottom;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        MoveEffect(
            curve: Curves.ease,
            duration: Duration(milliseconds: 500),
            transformHitTests: false)
      ],
      child: Padding(
        padding: EdgeInsets.only(bottom: mBottom ?? 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyText(
              text: label,
              size: 14,
              color: kTextColor,
              weight: FontWeight.w600,
            ),
            SizedBox(
              height: 6,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                autofocus: true,
                items: items
                    .map(
                      (item) => DropdownMenuItem<dynamic>(
                        value: item,
                        child: MyText(
                          text: item,
                          size: 12,
                          color: kTextColor,
                        ),
                      ),
                    )
                    .toList(),
                // Only pass value if it exists in items, otherwise pass null
                value: items.contains(selectedValue) ? selectedValue : null,
                onChanged: onChanged,
                iconStyleData: IconStyleData(iconSize: 6),
                isDense: true,
                isExpanded: false,
                customButton: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhiteColor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: (selectedValue == hint ||
                                  !items.contains(selectedValue))
                              ? hint
                              : selectedValue,
                          size: 14,
                          color: (selectedValue == hint ||
                                  !items.contains(selectedValue))
                              ? kTextGreyColor
                              : kTextColor,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: (selectedValue == hint ||
                                    !items.contains(selectedValue))
                                ? CommonImageView(
                                    svgPath: Assets.iconsArrowDown,
                                  )
                                : CommonImageView(
                                    svgPath: Assets.iconsArrowUp,
                                  )),
                      ],
                    ),
                  ),
                ),
                menuItemStyleData: MenuItemStyleData(
                  height: 35,
                ),
                dropdownStyleData: DropdownStyleData(
                  elevation: 1,
                  maxHeight: 300,
                  offset: Offset(0, -5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
