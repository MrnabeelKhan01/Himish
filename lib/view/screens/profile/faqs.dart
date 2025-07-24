import 'package:flutter/material.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../constant/app_colors.dart';
import '../../widgets/my_text_widget.dart';

class FAQs extends StatelessWidget {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppbar("FAQ"),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          FAQTile(
            title: "What is Himish?",
            description:
            "Himish is a local marketplace platform where users can list and discover apartments, cars, dresses, services, and more—all in one place.",
          ),
          FAQTile(
            title: "How do I create a listing?",
            description:
            "To create a listing, log in to your account, tap on the '+' icon, and fill out the required details including images, price, and description.",
          ),
          FAQTile(
            title: "Is it free to use?",
            description:
            "Yes, Himish is free to use for both buyers and sellers. Optional premium features may be available.",
          ),
          FAQTile(
            title: "How do I contact a seller or buyer?",
            description:
            "You can contact others via the in-app messaging feature available on each listing page after logging in.",
          ),
        ],
      ),
    );
  }
}

class FAQTile extends StatelessWidget {
  final String title;
  final String description;

  const FAQTile({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kWhiteColor,
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(

          backgroundColor:kWhiteColor,
          shape:OutlineInputBorder(
            borderRadius:BorderRadius.circular(8),
            borderSide:BorderSide.none
          ),
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          collapsedIconColor: kPrimaryColor,
          iconColor: kPrimaryColor,
          title: MyText(
            text: title,
            size: 14,
            weight: FontWeight.w600,
            color: kTextColor,
          ),
          children: [
            MyText(
              text: description,
              size: 14,
              lineHeight: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
