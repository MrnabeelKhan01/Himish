import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/utils.dart';
import 'package:himish/view/screens/home/widgets/categories_widget.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../../generated/assets.dart';
import '../widgets/fashion_card.dart';
import '../widgets/listening_card.dart';
import '../widgets/real_state_card.dart';

class ListeningTab extends StatelessWidget {
  const ListeningTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(height:8,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "All Categories",
                  size: 18,
                  weight: FontWeight.w700,
                  color: kBlackColor,
                ),
                MyText(
                  text: "View All",
                  size: 12,
                  weight: FontWeight.w700,
                  color: kPrimaryColor,
                ),
              ],
            ),
            SizedBox(height:10,),
            SizedBox(
              height:60,
              child: ListView.builder(
                clipBehavior:Clip.none,
                itemCount:categoriesList.length,
                  scrollDirection:Axis.horizontal,
                  shrinkWrap:true,
                  physics:BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(right:18.0),
                  child: CategoriesWidget(
                      icon: categoriesList[i].icon, name: categoriesList[i].title),
                );
              }),
            ),
            SizedBox(height:10,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "For Cars Used",
                  size: 18,
                  weight: FontWeight.w700,
                  color: kBlackColor,
                ),
                Row(
                  children: [
                    MyText(
                      text: "View All",
                      size: 12,
                      weight: FontWeight.w700,
                      color: kPrimaryColor,
                    ),
                    CommonImageView(
                      svgPath:Assets.iconsArrowRight,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height:10,),
            ListView.builder(
              itemCount:2,
                shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
                itemBuilder: (
                context,i){
              return ListeningCard(labelColor:kBlueColor,);
            }),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "Real Estate",
                  size: 18,
                  weight: FontWeight.w700,
                  color: kBlackColor,
                ),
                Row(
                  children: [
                    MyText(
                      text: "View All",
                      size: 12,
                      weight: FontWeight.w700,
                      color: kPrimaryColor,
                    ),
                    CommonImageView(
                      svgPath:Assets.iconsArrowRight,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height:10,),
            ListView.builder(
                itemCount:2,
                shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
                itemBuilder: (
                    context,i){
                  return RealStateCard(labelColor:kBlueColor,);
                }),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "👗 Dresses & Fashion",
                  size: 18,
                  weight: FontWeight.w700,
                  color: kBlackColor,
                ),
                Row(
                  children: [
                    MyText(
                      text: "View All",
                      size: 12,
                      weight: FontWeight.w700,
                      color: kPrimaryColor,
                    ),
                    CommonImageView(
                      svgPath:Assets.iconsArrowRight,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height:10,),
            ListView.builder(
                itemCount:2,
                shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
                itemBuilder: (
                    context,i){
                  return FashionCard(labelColor:kPinkColor,);
                })
          ],
        ),
      ),
    );
  }
}
