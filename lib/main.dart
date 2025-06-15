import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/home/home_details.dart';

import 'view/screens/auth/choose_profile.dart';
import 'view/screens/auth/login.dart';
import 'view/screens/auth/sign_up.dart';
import 'view/screens/catagories_details/car_details.dart';
import 'view/screens/catagories_details/fashion_details.dart';
import 'view/screens/home/home.dart';
import 'view/screens/notifications/notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Himish',
      theme: ThemeData(
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: kAppBGColor,
        useMaterial3: true,
      ),
      home: Notifications(),
    );
  }
}
