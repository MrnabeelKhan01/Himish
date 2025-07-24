import 'package:flutter/material.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import '../../../constant/app_colors.dart';
import '../../widgets/my_text_widget.dart';


class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppbar("Privacy Policy"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(text: "Effective Date: [Insert Date]", size: 14),
            MyText(text: "Last Updated: [Insert Date]", size: 14, paddingBottom: 12),
            MyText(
              text: "Welcome to Himish! Your privacy is important to us. "
                  "This Privacy Policy explains how we collect, use, and "
                  "protect your information when you use our app and website.",
              size: 14,
              lineHeight: 1.6,
              paddingBottom: 16,
            ),
            sectionTitle("📌 1. Information We Collect"),
            bulletPoint("a. Personal Information", isBold: true),
            subBullet("• Name, email address, phone number"),
            subBullet("• Profile picture and bio"),
            subBullet("• Address/location (if provided)"),
            subBullet("• Government ID (for verification, if applicable)"),
            bulletPoint("b. Listing Information", isBold: true),
            subBullet("• Listings you post (apartments, dresses, services)"),
            subBullet("• Photos and descriptions you upload"),
            bulletPoint("c. Usage Data", isBold: true),
            subBullet("• Device type, OS, browser type"),
            subBullet("• App usage patterns (pages visited, time spent)"),
            subBullet("• IP address and location data (if allowed)"),
            bulletPoint("d. Communication Data", isBold: true),
            subBullet("• Messages you send/receive on Himish"),
            subBullet("• Support requests and feedback"),
            SizedBox(height: 24),
            sectionTitle("⚙️ 2. How We Use Your Information"),
            MyText(
              text: "We use your information to:",
              size: 14,
              paddingBottom: 8,
            ),
            subBullet("• Create and manage your account"),
            subBullet("• Display and manage listings"),
            subBullet("• Facilitate bookings and communications"),
            subBullet("• Improve app performance and user experience"),
            subBullet("• Send updates, promotions, or alerts"),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return MyText(
      text: title,
      size: 14,
      weight: FontWeight.w600,
      color: kBlackColor,
      paddingBottom: 10,
    );
  }

  Widget bulletPoint(String text, {bool isBold = false}) {
    return MyText(
      text: text,
      size: 14,
      weight: isBold ? FontWeight.w700 : FontWeight.w400,
      paddingTop: 10,
      color:kBlackColor,
      paddingBottom: 6,
    );
  }

  Widget subBullet(String text) {
    return MyText(
      text: text,
      paddingLeft: 12,
      paddingBottom: 4,
      color: kBlackColor
    );
  }
}
