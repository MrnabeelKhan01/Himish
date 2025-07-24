import 'package:flutter/material.dart';
import 'package:himish/constant/app_styles.dart';

import '../../../../constant/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../widgets/my_text_widget.dart';

class CommentsSheet extends StatelessWidget {
  const CommentsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:10,),
        Container(
          height:5,
          width:70,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color:kFillColor
          ),
        ),
       SizedBox(height:10,),

        Padding(
          padding: const EdgeInsets.only(left:18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: "Comments",
                size: 20,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color:kPrimaryColor),
              ),
            ],
          ),
        ),
        kAppDivider,
        SizedBox(height:10,),
        // Comments List
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              _buildComment(
                username: "@matthews",
                comment: "Wonderful 😍",
                avatarUrl: "https://via.placeholder.com/40",
              ),
              _buildComment(
                username: "@davidson",
                comment: "😃😃 Wish more listings were this detailed. Nice work!",
                avatarUrl: "https://via.placeholder.com/40",
              ),
              _buildComment(
                username: "@williams",
                comment: "Great find! 🥰 I rented from here last year—amazing landlord. 🥰",
                avatarUrl: "https://via.placeholder.com/40",
              ),
              _buildComment(
                username: "@branham",
                comment: "Looks spacious! Can I schedule a viewing this weekend?😍",
                avatarUrl: "https://via.placeholder.com/40",
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.all(18),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: kAppBorderColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: MyText(
                    text: "Write a comment...",
                    size: 16,
                    weight: FontWeight.w400,
                    color: kTextGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildComment({
    required String username,
    required String comment,
    required String avatarUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar
          CircleAvatar(
            radius: 20,
            backgroundImage:AssetImage(Assets.imagesProfile,)
          ),
          const SizedBox(width: 12),

          // Comment content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: username,
                  size: 16,
                  weight: FontWeight.w400,
                  color: kBlackColor,
                ),
                const SizedBox(height: 4),
                MyText(
                  text: comment,
                  size: 14,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
