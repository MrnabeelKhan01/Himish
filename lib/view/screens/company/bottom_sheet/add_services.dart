import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/widgets/common_image_widget.dart';

import '../../../../constant/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/my_text_widget.dart';

class SelectServiceSheet extends StatefulWidget {
  const SelectServiceSheet({super.key});

  @override
  State<SelectServiceSheet> createState() => _SelectServiceSheetState();
}

class _SelectServiceSheetState extends State<SelectServiceSheet> {
  final List<String> _services = [
    "Test Serv - Industry",
    "Automotive",
    "Technology",
    "Healthcare",
    "Finance",
    "Transpiration",
    "Real State",
    "Legal Service",
    "Marketing",
    "Human Resources",
    "Consulting",
    "Event Planning",
    "Building Maintenance",
    "Retail",
    "Employment",
    "Home Improvement",
    "Construction",
    "Test Serv Industry 2",
    "Test Serv Industry 5",
    "Test Serv Industry 19",
    "Hospitality",
    "Food Service",
    "Media & Marketing",
    "Home Service",
    "Health & Wellness",
    "Food & Beverage",
    "Landscaping",
    "Financial Service",
    "Maintenance",
    "Travel",
    "Business Service",
    "Environmental Service",
    "Healthcare",
    "Home Maintenance",
    "Clildcare",
    "Equipment Rental",
    "Grocery",
  ];

  String _searchText = '';
  final List<String> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    final filteredServices = _services
        .where((service) =>
        service.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return  SafeArea(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 8),
          child: SizedBox(
            height:Get.height/1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                  Container(
                    height:5,
                    width:80,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(100),
                      color:Color(0xffF0F0F0)
                    ),
                  )
                ],),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     MyText(
                      text: "Select Service",
                      size: 20,
                      weight: FontWeight.w600,
                       color:kBlackColor,
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(Icons.close),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                kAppDivider,

                const SizedBox(height: 12),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                   color:kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: kAppBorderColor),
                  ),
                  child: Row(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      CommonImageView(
                        svgPath:Assets.iconsSearchIc,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              _searchText = value;
                            });
                          },
                          decoration: const InputDecoration(
                            hintStyle:TextStyle(fontSize:14,color:kTextGreyColor),
                            hintText: "Search...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                /// Services List
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredServices.length,
                    itemBuilder: (_, index) {
                      final item = filteredServices[index];
                      final isSelected = _selectedItems.contains(item);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: item,
                            size: 16,
                            weight: FontWeight.w600,
                          ),
                          IconButton(
                            icon: Icon(
                              isSelected ? Icons.check : Icons.add,
                              color: isSelected ? kPrimaryColor : kPrimaryColor,
                            ),
                            onPressed: () {
                              setState(() {
                                if (isSelected) {
                                  _selectedItems.remove(item);
                                } else {
                                  _selectedItems.add(item);
                                }
                              });
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ),

                const SizedBox(height: 12),
                Container(
                 decoration:BoxDecoration(
                   color: kWhiteColor,
                   border:Border(top:BorderSide(color:kAppBorderColor))
                 ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:18.0,bottom:10),
                    child: Row(children: [
                      Expanded(
                        child: MyButton(
                          height:45,
                          onTap: () {},
                          buttonText: "Cancel",

                          backgroundColor: kWhiteColor,
                          outlineColor: kPrimaryColor,
                          fontColor: kPrimaryColor ,),
                      ),
                      SizedBox(width:12,),
                      Expanded(
                        child: MyButton(onTap: () {},
                          buttonText: "Save",
                          height:45,

                        ),
                      )
                    ],),
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
