import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/home/widgets/tab_widget.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import '../../../generated/assets.dart';
import 'tabs/business.dart';
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabsList.length, vsync: this);
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
                  controller: _tabController,
                  isScrollable: true,
                  dividerColor:kWhiteColor,
                  tabAlignment:TabAlignment.start,
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
                        title:
                        tabsList[index],
                       isSelected: _tabController.index == index,
                      ),
                    ),
                  ),
                  onTap: (i) {
                    setState(() {}); // To update isSelected visuals
                  },
                ),
              ),
            ),
           Expanded(
             child: TabBarView(
               controller:_tabController,
                 children: [
               BusinessTab(),
               ListeningTab(),
                   OnSaleTab(),
              SizedBox(),
              SizedBox(),
             ]),
           )
          ],
        ),
      ),
    );
  }
}
