import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/create_post/choose_post.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/add_submitted.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/edit_content.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/edit_post.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/payment.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/payment_successfull.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/post_your_add.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/preview_add.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/review_submit.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/your_add.dart';
import 'package:himish/view/screens/create_post/upload_image_flow.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';
import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final List<String> roles = ['Upload Image', 'Type it out', 'Speak it',];

  final List<String> _icons = [
    Assets.iconsUploadImage,
    Assets.iconsTypeIt,
    Assets.iconsSpeakIt,
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Choose"),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                children: [
                  const SizedBox(height: 18),
                  ...List.generate(roles.length, (index) {
                    final isSelected = selectedIndex == index;
                    return Bounce(
                      duration: Duration(milliseconds: 100),
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: 110,
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: isSelected ? kFillColor : kWhiteColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected ? kPrimaryColor : Colors.transparent,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isSelected ? kWhiteColor : Colors.transparent,
                                  border: Border.all(color:isSelected?kPrimaryColor:kAppBorderColor),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: CommonImageView(
                                    svgPath: _icons[index],
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              MyText(
                                text: roles[index],
                                size: 12,
                                color: kTextColor,
                                weight: isSelected
                                    ? FontWeight.w500
                                    : FontWeight.normal,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Container(
            color: kWhiteColor,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child:MyButton(
                onTap:(){
                  Get.to(UploadImageFlow());
                },
                buttonText: "Next",
              ),

            ),
          ),
        ],
      ),
    );
  }
}
