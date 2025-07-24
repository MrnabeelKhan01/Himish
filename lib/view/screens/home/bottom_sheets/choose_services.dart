import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_styles.dart';
import '../../../../generated/assets.dart';
import '../../../widgets/common_image_widget.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/my_text_widget.dart';

class ChooseServices extends StatefulWidget {
  const ChooseServices({super.key});

  @override
  State<ChooseServices> createState() => _ChooseServicesState();
}

class _ChooseServicesState extends State<ChooseServices> {
  final List<String> chips = [
    'Jobs',
    'Lost & Found',
    'Multi-location Services',
    'Cars',
    'Job Finder',
    'Events',
  ];

  // Track selected chips
  List<String> selectedChips = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 5,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kFillColor,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CommonImageView(
                    height: 20,
                    svgPath: Assets.bottomHomFill,
                  ),
                  SizedBox(width: 8),
                  MyText(
                    text: "Choose Service",
                    size: 20,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close, color: kPrimaryColor),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        kAppDivider,
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Service Type",
                size: 16,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 12.0, // Horizontal spacing between chips
                runSpacing: 12.0, // Vertical spacing between rows
                children: chips.map((label) {
                  bool isSelected = selectedChips.contains(label);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedChips.remove(label);
                        } else {
                          selectedChips.add(label);
                        }
                      });
                      print('Selected chips: $selectedChips');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected ? kPrimaryColor : kAppBorderColor,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: isSelected ? kPrimaryColor : kAppBorderColor,
                          width: 1.5,
                        ),
                      ),
                      child: MyText(
                        text: label,
                        size: 16.0,
                        weight: FontWeight.w500,
                        color: isSelected ? kWhiteColor : kBlackColor,
                      ),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
        SizedBox(height: 18),
        Container(
          decoration: BoxDecoration(
            color: kWhiteColor,
            border: Border(top: BorderSide(color: kAppBorderColor)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 10, right: 16, left: 16),
            child: Row(
              children: [
                Expanded(
                  child: MyButton(
                    height: 45,
                    onTap: () {
                      setState(() {
                        selectedChips.clear();
                      });
                    },
                    buttonText: "Reset",
                    backgroundColor: kWhiteColor,
                    outlineColor: kPrimaryColor,
                    fontColor: kPrimaryColor,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: MyButton(
                    onTap: () {
                      // Apply filter with selected chips
                      print('Applying filter with: $selectedChips');
                      // You can return the selected chips or handle them here
                      Navigator.pop(context, selectedChips);
                    },
                    buttonText: "Apply Filter",
                    height: 45,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}