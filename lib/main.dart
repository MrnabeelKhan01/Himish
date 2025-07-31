import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/catagories_details/all_categories/all_categories.dart';
import 'package:himish/view/screens/catagories_details/deals_details.dart';
import 'package:himish/view/screens/home/home_details.dart';

import 'view/screens/auth/choose_profile.dart';
import 'view/screens/auth/login.dart';
import 'view/screens/auth/sign_up.dart';
import 'view/screens/bottom_bar/bottom_bar.dart';
import 'view/screens/catagories_details/car_details.dart';
import 'view/screens/catagories_details/fashion_details.dart';
import 'view/screens/catagories_details/job_details.dart';
import 'view/screens/catagories_details/on_sale_details.dart';
import 'view/screens/company/add_company_info.dart';
import 'view/screens/company/add_image.dart';
import 'view/screens/company/add_new_company.dart';
import 'view/screens/company/company.dart';
import 'view/screens/company/company_details.dart';
import 'view/screens/company/my_companies.dart';
import 'view/screens/company/my_company_details/my_company_details.dart';
import 'view/screens/create_post/choose_post.dart';
import 'view/screens/create_post/create_post.dart';
import 'view/screens/create_post/upload_image/pages/add_submitted.dart';
import 'view/screens/create_post/upload_image/pages/edit_content.dart';
import 'view/screens/create_post/upload_image/pages/edit_post.dart';
import 'view/screens/create_post/upload_image/pages/payment.dart';
import 'view/screens/create_post/upload_image/pages/preview_add.dart';
import 'view/screens/create_post/upload_image/pages/review_submit.dart';
import 'view/screens/create_post/upload_image/pages/your_add.dart';
import 'view/screens/create_post/upload_image/pages/upload_image.dart';
import 'view/screens/create_post/upload_image_flow.dart';
import 'view/screens/home/filter_sort.dart';
import 'view/screens/home/home.dart';
import 'view/screens/location/select_location.dart';
import 'view/screens/my_adds/my_adds.dart';
import 'view/screens/notifications/notifications.dart';
import 'view/screens/profile/contact_us.dart';
import 'view/screens/profile/edit_profile.dart';
import 'view/screens/profile/faqs.dart';
import 'view/screens/profile/notification_setting.dart';
import 'view/screens/profile/privacy_policy.dart';
import 'view/screens/profile/profile.dart';
import 'dart:io';
import 'injection_container.dart' as di;
void main() async{
  HttpOverrides.global = MyHttpOverrides();
  await di.init();
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
      home: FAQs(),
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}