import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/create_post/create_post.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';

import '../../widgets/my_text_widget.dart';

class ChoosePost extends StatefulWidget {
  const ChoosePost({super.key});

  @override
  State<ChoosePost> createState() => _ChoosePostState();
}

class _ChoosePostState extends State<ChoosePost> {
  final List<String> roles = ['Listing', 'On Sale', 'Deals', 'Events'];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Choose"),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:28.0),
              child: Column(
                children: [
                  SizedBox(height:18,),
                  ...List.generate(roles.length, (index) {
                    final isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        height:56,
                        margin: const EdgeInsets.only(bottom:12),
                        decoration: BoxDecoration(
                          color: isSelected ?Color(0xffE9ECF3) : kWhiteColor,
                          borderRadius: BorderRadius.circular(12),
                          border: isSelected
                              ? Border.all(color: kPrimaryColor, width: 1)
                              : Border.all(color: Colors.transparent),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: MyText(
                            text:roles[index],
                            color: isSelected ? kTextColor : kTextColor,
                            weight:isSelected ? FontWeight.w500 : FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
          Container(
            color:kWhiteColor,
            child:Padding(
              padding: const EdgeInsets.all(18.0),
              child: MyButton(onTap: (){
                Get.to(()=>CreatePost());
              }, buttonText: "Next"),
            ),
          )
        ],
      ),
    );
  }
}
