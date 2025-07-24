import 'package:flutter/material.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';

class JobFairDetails extends StatelessWidget {
  const JobFairDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Job Details"),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonImageView(
                imagePath: Assets.imagesJobDetails,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CommonImageView(
                    svgPath: Assets.iconsTimerIc,
                  ),
                  MyText(
                    text: "1 h",
                    size: 12,
                    color: kTextGreyColor,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: "Macher Job Fair",
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: MyText(
                      text: "Job Fair",
                      size: 10,
                      color: kWhiteColor,
                      weight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 4),

              Row(
                children: [
                 CommonImageView(
                   svgPath: Assets.iconsLocation,
                 ),
                  const SizedBox(width: 4),
                  MyText(
                    text: "3182 August Lane Minden",

                    color: kTextGreyColor,
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Details Grid
              _buildDetailRow("Pricing", "90/hr"),
              _buildDetailRow("Time", "10:00 AM - 3:00 PM"),
              _buildDetailRow("Date", "May 25, 2025"),
              _buildDetailRow("Host name", "Sam Corden"),
              _buildDetailRow("Contact Phone", "+1 718 228 6350"),
              _buildDetailRow("Email", "example@gmail.com", isLink: true),
              _buildDetailRow("Website", "www.macherjobfair.com", isLink: true),
              _buildDetailRow("Application Method:",
                  "Walk-in or pre-register via\nwebsite or email."),
              _buildDetailRow("Duration", "5 hours"),
              _buildDetailRow("Highlights", "On-the-spot interviews"),

              const SizedBox(height: 16),

              // Categories
              MyText(
                text: "Category",

                color: kTextGreyColor,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _buildCategoryChip("Cooking class"),
                  const SizedBox(width: 8),
                  _buildCategoryChip("Health & Wellness"),
                ],
              ),

              const SizedBox(height: 12),

              MyText(
                text: "Sub category",

                color: kTextGreyColor,
              ),
              const SizedBox(height: 8),
              _buildCategoryChip("Childcare Employment"),

              const SizedBox(height: 12),

              MyText(
                text: "Target Audience",

                color: kTextGreyColor,
              ),
              const SizedBox(height: 8),
              MyText(
                text: "Babysitters, Nannies, Daycare providers",

                color: kPrimaryColor,
                weight: FontWeight.w600,
              ),

              const SizedBox(height: 16),

              // Keywords
              MyText(
                text: "Keyword",

              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildKeywordChip("babysitter"),
                  _buildKeywordChip("childcare"),
                  _buildKeywordChip("kids"),
                  _buildKeywordChip("SUV"),
                  _buildKeywordChip("AWD"),
                  _buildKeywordChip("Color"),
                ],
              ),

              const SizedBox(height: 16),

              // Description
              MyText(
                text: "Description",
                size: 16,
                weight: FontWeight.w600,

              ),
              const SizedBox(height: 8),
              MyText(
                text:
                    "A local job fair focused on childcare and family services, connecting caregivers with job opportunities in Brooklyn.",

                color: kTextColor,
                lineHeight: 1.4,
              ),

              const SizedBox(height: 16),

              // Purpose
              MyText(
                text: "Purpose",
                size: 16,
                weight: FontWeight.w600,

              ),
              const SizedBox(height: 8),
              MyText(
                text:
                    "To connect job seekers with employers in the childcare industry and provide education and hiring support in the local community.",

                color: kTextColor,
                lineHeight: 1.4,
              ),

              const SizedBox(height: 16),

              // Notes
             Container(
               decoration:BoxDecoration(
                 color:Color(0xffD4E0EB),
                 borderRadius:BorderRadius.circular(8)
               ),
               child:Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment:CrossAxisAlignment.start,
                   children: [ MyText(
                   text: "Notes",
                   size: 16,
                   weight: FontWeight.w600,

                 ),
                   const SizedBox(height: 8),
                   MyText(
                     text:
                     "Attendees should bring multiple copies of their resume and be prepared for same-day interviews.",

                     color: kTextColor,
                   ),

                 ],),
               ),
             ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isLink = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: MyText(
              text: label,
              size: 14,
              color: kTextGreyColor,
            ),
          ),
          Expanded(
            child: MyText(
              text: value,
              size: 16,
              color: isLink ? kPrimaryColor : kTextColor,
              weight: FontWeight.w600,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color:kWhiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: MyText(
        text: text,
        size: 10,
        color: kPrimaryColor,
        weight:FontWeight.w500,
      ),
    );
  }

  Widget _buildKeywordChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color:kWhiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: MyText(
        text: text,
        size: 12,
        color: kPrimaryColor,
      ),
    );
  }
}
