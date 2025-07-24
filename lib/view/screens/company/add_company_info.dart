import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/view/screens/company/bottom_sheet/add_product.dart';
import 'package:himish/view/screens/company/my_companies.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/custom_drop_down.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_field.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';
import 'bottom_sheet/add_services.dart';

class AddCompanyInfo extends StatelessWidget {
  const AddCompanyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: kWhiteColor,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(children: [
            Expanded(
              child: MyButton(onTap: () {},
                  buttonText: "Cancel",

                  backgroundColor: kWhiteColor,
                  outlineColor: kPrimaryColor,
                  fontColor: kPrimaryColor ,),
            ),
            SizedBox(width:12,),
            Expanded(
              child: MyButton(onTap: () {
                Get.to(()=>MyCompanies());
              },
                buttonText: "Save",

              ),
            )
          ],),
        ),
      ),
      appBar: customAppbar("Add Company info"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            MyText(text: 'Company Information',
              weight: FontWeight.w600,
              size: 14,
              color: kBlackColor,),
            Wrap(
              spacing: 4,
              children: [
                _optionChip('Wholesale'),
                _optionChip('Retail', selected: true),
                _optionChip('Manufacturer'),
                _optionChip('Service Provider'),
              ],
            ),
            MyTextField(
              hint: "Enter description", label: "Description", maxLines: 3,),
            MyText(text: 'Location',
              weight: FontWeight.w600,
              size: 14,
              color: kBlackColor,),
            Wrap(
              spacing: 8,
              children: [
                _optionChip('Mobile Business', icon: Icons.info_outline),
                _optionChip(
                    'Whole world', selected: true, icon: Icons.info_outline),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(text: 'Your Location',
                  weight: FontWeight.w600,
                  size: 14,
                  color: kBlackColor,),
                Row(children: [
                  MyText(text: "Add",
                    size: 14,
                    weight: FontWeight.w600,
                    color: kPrimaryColor,),
                  Icon(Icons.add, color: kPrimaryColor, size: 20,)
                ],)
              ],
            ),
            SizedBox(height: 10,),
            Row(

              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhiteColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: CommonImageView(
                      svgPath: Assets.iconsLocation,
                      svgColor: kPrimaryColor,
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                    child: TextFormField(
                      cursorColor: kPrimaryColor,
                      obscuringCharacter: '*',
                      style: TextStyle(
                        fontSize: 15,
                        color: kTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 18, vertical: 0),
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: kTextGreyColor
                        ),
                        hintText: "5124 Broadway, New Hyde Park, NY 12334",
                        filled: true,
                        fillColor: kWhiteColor,

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kWhiteColor, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kWhiteColor, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),

                      ),
                    )
                ),
                SizedBox(width: 8,),
                CommonImageView(
                  svgPath: Assets.iconsTrash,
                )
              ],),
            SizedBox(height: 10,),
            Row(

              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhiteColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: CommonImageView(
                      svgPath: Assets.iconsLocation,
                      svgColor: kPrimaryColor,
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                    child: TextFormField(
                      cursorColor: kPrimaryColor,
                      style: TextStyle(
                        fontSize: 15,
                        color: kTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 18, vertical: 0),
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: kTextGreyColor
                        ),
                        hintText: "Enter Location",
                        filled: true,
                        fillColor: kWhiteColor,

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kWhiteColor, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: kWhiteColor, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),

                      ),
                    )
                ),
                SizedBox(width: 8,),
                CommonImageView(
                  svgPath: Assets.iconsTrash,
                )
              ],),


            SizedBox(height: 10,),
            _dividerWithTitle('Products'),
            SizedBox(height: 10,),
            GestureDetector(
              onTap:(){
                Get.bottomSheet(
                    isScrollControlled:true,
                    backgroundColor:kWhiteColor,
                    AddProductSheet());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text: "HVAC Services", weight: FontWeight.w600,),
                  Row(children: [
                    MyText(text: "Add Products",
                      size: 14,
                      weight: FontWeight.w600,
                      color: kPrimaryColor,),
                    Icon(Icons.add, color: kPrimaryColor, size: 20,)
                  ],)
                ],
              ),
            ),
            Wrap(
              spacing: 8,
              children: [
                _optionChip('Test - Industry'),
                _optionChip('Technology', selected: true),
                _optionChip('Healthcare', selected: true),
                _optionChip('Constructions'),
                _optionChip('Finance'),
              ],
            ),


            _dividerWithTitle('Service'),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(text: "HVAC Services", weight: FontWeight.w600,),
                GestureDetector(
                  onTap:(){
                    Get.bottomSheet(
                      isScrollControlled:true,
                      backgroundColor:kWhiteColor,
                        SelectServiceSheet());
                  },
                  child: Row(children: [
                    MyText(text: "Add Service",
                      size: 14,
                      weight: FontWeight.w600,
                      color: kPrimaryColor,),
                    Icon(Icons.add, color: kPrimaryColor, size: 20,)
                  ],),
                )
              ],
            ),

            Wrap(
              spacing: 8,
              children: [
                _optionChip('Test - Industry'),
                _optionChip('Technology', selected: true),
                _optionChip('Healthcare', selected: true),
              ],
            ),
            SizedBox(height: 10,),

            SizedBox(height: 10,),
            MyTextField(hint: "Type in keywords...", label: "Keywords",),
            Wrap(
              spacing: 4,
              children: [
                _tagChip('Test - Industry'),
                _tagChip('Technology'),
                _tagChip('ABC'),
                _tagChip('Finance'),
              ],
            ),
            CustomDropDown(label: "Your Associations with this company",
                hint: "Select Company",
                items: [
                  "Select Company"
                ],
                selectedValue: "Select Company",
                onChanged: (val) {

                }),
            SizedBox(height: 18,),
          ],
        ),
      ),
    );
  }

  Widget _optionChip(String text, {bool selected = false, IconData? icon}) {
    return Chip(

      backgroundColor: selected ? kPrimaryColor : Colors.white,
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          MyText(
            text: text,
            color: selected ? kWhiteColor : kTextGreyColor,
            size: 14,
            weight: FontWeight.w500,
          ),
          if (icon != null) SizedBox(width: 4,),
          if (icon != null) CommonImageView(
            svgPath: Assets.iconsInfo,
            svgColor: selected ? kWhiteColor : kPrimaryColor,
          ),

        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: kWhiteColor)),
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
    );
  }


  Widget _dividerWithTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: CommonImageView(
          imagePath: Assets.imagesLeftDivider,
        )),
        SizedBox(width: 12,),
        MyText(text: title, size: 16, weight: FontWeight.w600),
        SizedBox(width: 12,),
        Expanded(child: CommonImageView(
          imagePath: Assets.imagesRightDivider,
        )),
      ],
    );
  }

  Widget _tagChip(String label) {
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyText(text: label,
            size: 12,
            weight: FontWeight.w500,
            color: kTextGreyColor,),
          SizedBox(height: 10,),
          const Icon(Icons.close, size: 14, color: Colors.red),
        ],
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), side: BorderSide.none),
      side: BorderSide.none,
    );
  }
}
