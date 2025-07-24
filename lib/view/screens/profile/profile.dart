import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/view/screens/all_book_mark/all_book_marks.dart';
import 'package:himish/view/screens/company/my_companies.dart';
import 'package:himish/view/screens/my_adds/my_adds.dart';
import 'package:himish/view/screens/profile/contact_us.dart';
import 'package:himish/view/screens/profile/edit_profile.dart';
import 'package:himish/view/screens/profile/faqs.dart';
import 'package:himish/view/screens/profile/log_out.dart';
import 'package:himish/view/screens/profile/notification_setting.dart';
import 'package:himish/view/screens/profile/privacy_policy.dart';
import 'package:himish/view/screens/profile/widgets/profile_widget.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: SingleChildScrollView(
          physics:BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(children: [
              SizedBox(height:18,),
              MyText(
                text: "Profile",
                color:kBlackColor,
                size: 16,
                weight: FontWeight.w600,
              ),
              SizedBox(height:18,),
              Stack(
                children: [
                  CommonImageView(
                    height:100,
                    width:100,
                    radius:100,
                    imagePath:Assets.imagesProfile,
                  ),
                  Positioned(
                    right:0,
                    bottom:0,
                    child: Container(
                      decoration:BoxDecoration(
                     borderRadius:BorderRadius.circular(10),
                        border:Border.all(color:kWhiteColor,width:0.5),
                        color:kPrimaryColor
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CommonImageView(
                          svgPath:Assets.iconsCamera,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height:10,),
              MyText(text: "Mark Johnson",size:18,weight:FontWeight.w700,color:kBlackColor,),
              MyText(text: "markjohnson@example.com",color:kTextGreyColor,),
              SizedBox(height:18,),
              Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(12),
                  color:kWhiteColor
                ),
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(children: [
                    ProfileWidget(icon:Assets.iconsProfile, title: "Personal information", onPressed:(){
                      Get.to(()=>EditProfile());
                    }),
                    ProfileWidget(icon:Assets.iconsBank, title: "Company Profile", onPressed:(){
                      Get.to(()=>MyCompanies());
                    }),
                    ProfileWidget(icon:Assets.iconsMyAds, title: "My Ads", onPressed:(){
                      Get.to(()=>MyAdds());
                    }),
                    ProfileWidget(icon:Assets.iconsAllBook, title: "All Bookmarks", onPressed:(){
                      Get.to(()=>AllBookMarks());
                    }),
                    ProfileWidget(icon:Assets.iconsPrivacy, title: "Privacy Policy", onPressed:(){
                      Get.to(()=>PrivacyPolicy());
                    }),
                    ProfileWidget(icon:Assets.iconsNotificationIc, title: "Notifications", onPressed:(){
                      Get.to(()=>NotificationSetting());
                    }),
                    ProfileWidget(icon:Assets.iconsInfo, title: "FAQ", onPressed:(){
                      Get.to(()=>FAQs());
                    }),
                    ProfileWidget(icon:Assets.iconsHelp, title: "Contact us", onPressed:(){
                      Get.to(()=>ContactUs());
                    }),
                    ProfileWidget(icon:Assets.iconsLogout, title: "Log Out", onPressed:(){
                      Get.bottomSheet(
                        backgroundColor:kWhiteColor,
                          LogOut());
                    },isShowBorder:false,),
                  ],),
                ),
              ),
              SizedBox(height:120,)
            ],),
          ),
        ),
      ),
    );
  }
}
