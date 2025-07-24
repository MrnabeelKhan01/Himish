import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:himish/view/screens/company/company.dart';
import 'package:himish/view/screens/create_post/choose_post.dart';
import 'package:himish/view/screens/home/home.dart';
import 'package:himish/view/screens/notifications/notifications.dart';
import 'package:himish/view/screens/profile/profile.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';

class BottomNavBar extends StatefulWidget {
  final int initialIndex;

  const BottomNavBar({super.key, this.initialIndex = 0});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late List<Map<String, dynamic>> items;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
    updateItems();
  }

  void updateItems() {
    items = [
      {
        'image': currentIndex == 0 ? Assets.bottomHomFill : Assets.bottomHome,
        'label': 'Home'
      },
      {
        'image': currentIndex == 1 ? Assets.bottomNotificationFill : Assets.bottomNotification,
        'label': 'Notification'
      },
      {
        'image': currentIndex == 2 ? Assets.bottomAdd : Assets.bottomAdd,
        'label': 'Settings'
      },
      {
        'image': currentIndex == 3 ? Assets.bottomStoreFill : Assets.bottomStore,
        'label': 'Company'
      },
      {
        'image': currentIndex == 4 ? Assets.bottomUserFill : Assets.bottomUser,
        'label': 'Account'
      },

    ];
  }

  final List<Widget> screens = [
    Home(),
     Notifications(),
     ChoosePost(),
    Company(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: kAppBGColor,
      body: screens[currentIndex],
      bottomNavigationBar: BottomAppBar(
        height:85,
        color: kWhiteColor,
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0),
            _buildNavItem(1),
            const SizedBox(width: 60), // space for FAB
            _buildNavItem(3),
            _buildNavItem(4),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: const FixedCenterDockedFabLocation(),
    );
  }

  Widget _buildNavItem(int index) {
    final item = items[index];
    final isSelected = currentIndex == index;

    return  IconButton(
        onPressed:() => _onItemTapped(index),
        icon: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              item['image'],
              color: isSelected ? kPrimaryColor : kTextColor, // Add your color constants
            ),
            const SizedBox(height: 4),
            Text(
              item['label'],
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? kPrimaryColor : kTextColor,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ],
        ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Bounce(
      onPressed: (){
        Get.to(ChoosePost());
      },
      duration: Duration(milliseconds: 100),
      child: Container(
        height: 70,
        width: 70,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:kFillColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              items[2]['image'],
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
      updateItems();
    });
  }
}

class FixedCenterDockedFabLocation extends StandardFabLocation
    with FabCenterOffsetX, FabDockedOffsetY {
  const FixedCenterDockedFabLocation();

  @override
  double getOffsetY(ScaffoldPrelayoutGeometry scaffoldGeometry, double adjustment) {
    final double bottomDistance = WidgetsBinding.instance.window.viewInsets.bottom;
    if (bottomDistance > 1) {
      return -bottomDistance;
    }
    return super.getOffsetY(scaffoldGeometry, adjustment);
  }

  @override
  String toString() => 'FloatingActionButtonLocation.fixedCenterDocked';
}