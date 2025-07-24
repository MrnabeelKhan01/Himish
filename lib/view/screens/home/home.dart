import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/home/tabs/events.dart';
import 'package:himish/view/screens/home/widgets/tab_widget.dart';
import 'package:himish/view/screens/location/select_location.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_text_widget.dart';
import '../../../generated/assets.dart';
import 'bottom_sheets/choose_services.dart';
import 'bottom_sheets/sort.dart';
import 'tabs/business.dart';
import 'tabs/deals.dart';
import 'tabs/listening.dart';
import 'tabs/on_sale.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  List<String> tabsList = [
    "Business",
    "Listing",
    "On sale",
    "Deals",
    "Events",
  ];

  late TabController _tabController;
  int currentIndex = 0; // Track current tab index

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabsList.length, vsync: this);

    // Listen to tab controller changes (handles both tap and scroll)
    _tabController.addListener(() {
      if (_tabController.indexIsChanging || _tabController.index != currentIndex) {
        setState(() {
          currentIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabsList.length,
      child: Scaffold(
        floatingActionButton:SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(bottom:Platform.isIOS?140.0:100,left:18),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width:80,),
          Row(children: [
            GestureDetector(
              onTap:(){
                Get.bottomSheet(
                  backgroundColor:kWhiteColor,
                    SortSheet());
              },
              child: Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:kPrimaryColor
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:4),
                  child: Row(

                    children: [
                      CommonImageView(
                        svgPath:Assets.iconsSort,
                      ),
                      SizedBox(width:8,),
                      MyText(text: "Sort",size:12,weight:FontWeight.w600,color:kWhiteColor,)
                    ],),
                ),
              ),
            ),
            SizedBox(width:18,),
            GestureDetector(
              onTap:(){
                Get.bottomSheet(
                    backgroundColor:kWhiteColor,
                    ChooseServices());
              },
              child: Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:kPrimaryColor
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:4),
                  child: Row(

                    children: [
                      CommonImageView(
                        svgPath:Assets.iconsFilter,
                      ),
                      SizedBox(width:8,),
                      MyText(text: "Filter",size:12,weight:FontWeight.w600,color:kWhiteColor,)
                    ],),
                ),
              ),
            ),
          ],),
                Bounce(
                  duration: Duration(milliseconds:100),
                  onPressed: () { 
                    Get.to(()=>SelectLocation());
                  },
                  child: Container(
                    decoration:BoxDecoration(
                      shape:BoxShape.circle,
                      color:kWhiteColor
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CommonImageView(
                        svgPath:Assets.iconsLocationIc,
                        svgColor:kPrimaryColor,
                        height:30,
                        width:30,
                      ),
                    ),
                  ),
                )
            ],),
          ),
        ),
        appBar: AppBar(
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: CommonImageView(
            height: 32,
            imagePath: Assets.imagesAppLogo,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kAppBorderColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CommonImageView(
                    svgPath: Assets.iconsSearchIc,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 36,
              width: Get.width,
              color: kWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: TabBar(
                  physics:NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  isScrollable: true,
                  dividerColor: kWhiteColor,
                  tabAlignment: TabAlignment.start,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kSecondaryColor,
                  ),
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  indicatorSize: TabBarIndicatorSize.tab,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  labelColor: kWhiteColor,
                  unselectedLabelColor: kTextGreyColor,
                  tabs: List.generate(
                    tabsList.length,
                        (index) => Tab(
                      child: TabWidget(
                        title: tabsList[index],
                        isSelected: currentIndex == index, // Use currentIndex instead
                      ),
                    ),
                  ),
                  // Remove onTap since we're handling it in the listener
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                physics:NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  BusinessTab(),
                  ListeningTab(),
                  OnSaleTab(),
                  DealsTab(),
                  EventsTab(),



                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}