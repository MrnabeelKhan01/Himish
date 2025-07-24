import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';

import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';
import 'upload_image/pages/add_submitted.dart';
import 'upload_image/pages/edit_content.dart';
import 'upload_image/pages/edit_post.dart';
import 'upload_image/pages/payment.dart';
import 'upload_image/pages/payment_successfull.dart';
import 'upload_image/pages/post_your_add.dart';
import 'upload_image/pages/preview_add.dart';
import 'upload_image/pages/review_submit.dart';
import 'upload_image/pages/your_add.dart';

class UploadImageFlow extends StatefulWidget {
  const UploadImageFlow({super.key});

  @override
  State<UploadImageFlow> createState() => _UploadImageFlowState();
}

class _UploadImageFlowState extends State<UploadImageFlow> {
  final PageController _pageController = PageController();
  int currentPageIndex = 0;

  final List<Widget> _pages = [
    PostYourAdd(),
    EditContent(),
    ReviewSubmit(),
    YourAdd(),
    PreviewAdd(),
    AddSubmitted(),

  ];

  void goToNextPage() {
    if (currentPageIndex < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
  final List<String> _titles = [
    "Upload image",
    "Edit Ad Content",
    "Review & Submit",
    "Type Your Ad",
    "Preview Ad",
    "Ad Submitted",
    "Review & Edit",
    "Payment",
    "Payment Successful",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:kWhiteColor,
        titleSpacing:10,
        elevation:0,
        leading: IconButton(
          onPressed: () {
            if (currentPageIndex > 0) {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              setState(() {
                currentPageIndex--;
              });
            } else {
              Get.back();
            }
          },
          icon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(Assets.iconsBackIcon),
          ),
        ),

        centerTitle:true,
        title: MyText(
          text: _titles[currentPageIndex],
          color:kBlackColor,
          size: 16,
          weight: FontWeight.w600,
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(), // disable swiping
              itemCount: _pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return _pages[index];
              },
            ),
          ),
          Container(
            color: kWhiteColor,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: currentPageIndex == 4
                  ? Row(
                children: [
                  Expanded(
                    child: MyButton(
                      onTap: () {
                       Get.to(()=>EditPost());
                       
                      },
                      buttonText: "Edit Post",
                      backgroundColor: kWhiteColor,
                      outlineColor: kPrimaryColor,
                      fontColor: kPrimaryColor,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: MyButton(
                      onTap: goToNextPage,
                      buttonText: "Submit Ad",
                    ),
                  ),
                ],
              )
                  : MyButton(onTap: goToNextPage, buttonText: "Next"),
            ),
          ),

        ],
      ),
    );
  }
}
