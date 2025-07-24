import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/home/tabs/events.dart';
import 'package:himish/view/screens/home/widgets/tab_widget.dart';
import 'package:himish/view/screens/location/select_location.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_text_widget.dart';
import '../../../generated/assets.dart';
import '../home/tabs/business.dart';
import '../home/tabs/deals.dart';
import '../home/tabs/listening.dart';
import '../home/tabs/on_sale.dart';


class AllBookMarks extends StatefulWidget {
  const AllBookMarks({super.key});

  @override
  State<AllBookMarks> createState() => _AllBookMarksState();
}

class _AllBookMarksState extends State<AllBookMarks> with TickerProviderStateMixin {
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
        appBar:customAppbar('All Bookmarks'),
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
                  BusinessTab(isBookmark:true,),

                  Center(child:MyText(text: "No items Book Marked"),),

                  Center(child:MyText(text: "No items Book Marked"),),
                  DealsTab(isBookmark:true,),
                  Center(child:MyText(text: "No items Book Marked"),),



                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}