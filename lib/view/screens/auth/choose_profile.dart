import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/auth/sign_up.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../widgets/custom_drop_down.dart';

class ChooseProfile extends StatefulWidget {
  const ChooseProfile({super.key});

  @override
  State<ChooseProfile> createState() => _ChooseProfileState();
}

class _ChooseProfileState extends State<ChooseProfile> {
  String selectedValue = 'Choose Profile Type'; // Initialize with hint text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    MyText(
                      textAlign:TextAlign.center,
                      text: "Choose Your Profile",
                      size: 28,
                      weight: FontWeight.w700,
                      color: kBlackColor,
                    ),
                    MyText(
                      textAlign:TextAlign.center,
                      text: "Select a door to begin your journey",
                      size: 14,
                      weight: FontWeight.w300,
                      color: kTextColor,
                    ),
                    CustomDropDown(
                      label: '',
                      hint: 'Choose Profile Type',
                      items: [
                        "Men",
                        "Woman",
                      ],
                      selectedValue: selectedValue, // Use the state variable
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value; // Update the selected value
                        });
                      },
                    )
                  ],
                ),
              ),
              MyButton(onTap: (){
                Get.to(()=>SignUp());
              }, buttonText: "Next"),
              SizedBox(height:18,),
            ],
          ),
        ),
      ),
    );
  }
}