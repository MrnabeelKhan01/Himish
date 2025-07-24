import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:himish/view/screens/catagories_details/all_categories/tabs/fashion_tab.dart';
import 'package:himish/view/screens/catagories_details/all_categories/tabs/vehicles.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/utils.dart';
import '../../../widgets/common_image_widget.dart';
import '../../../widgets/my_text_widget.dart';
import '../../home/widgets/categories_widget.dart';
import 'tabs/real_state_tab.dart';
import 'tabs/services_tab.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({super.key});

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  int selectedIndex=0;
  void setIndex(int i){
    setState(() {
      selectedIndex=i;
    });
  }
  int get getIndex=>selectedIndex;
  final List<Widget> categoryTabs = [
    VehiclesTab(),
    RealStateTab(),
    FashionTab(),
    ServicesTab(),
    ServicesTab(),
    ServicesTab(),
    ServicesTab(),
    ServicesTab(),
    ServicesTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppbar("All Categories"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 65,
              child: ListView.builder(
                  clipBehavior: Clip.none,
                  itemCount: allCategoriesList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Padding(
                        padding:  EdgeInsets.only(right: 18.0,left:i==0?18:0),
                        child: Column(
                          children: [
                            Bounce(
                              duration: Duration(milliseconds: 100),
                              onPressed:(){
                                setIndex(i);
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:getIndex==i?kPrimaryColor: kWhiteColor),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: CommonImageView(
                                    svgPath: allCategoriesList[i].icon,
                                    svgColor:getIndex==i?kWhiteColor:kPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            MyText(
                              text: allCategoriesList[i].title,
                              color: kPrimaryColor,
                              weight: FontWeight.w600,
                              size: 12,
                            )
                          ],
                        ));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:6.0),
              child: categoryTabs[getIndex],
            )
          ],
        ),
      ),
    );
  }
}
