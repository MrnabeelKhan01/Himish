import 'package:flutter/material.dart';
import 'package:himish/view/screens/company/widgets/company_widget.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/common_image_widget.dart';
import '../../widgets/tab_widget.dart';

class Company extends StatelessWidget {
   Company({super.key});
final List<String>  _categories=[
  "All",
  "Paint",
  "Roofing",
  "School Supply",
  "Auto Lease",
  "Items",
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: SingleChildScrollView(
          clipBehavior:Clip.none,
          physics:BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(height:10,),
            SingleChildScrollView(
              clipBehavior:Clip.none,
              scrollDirection:Axis.horizontal,
              physics:BouncingScrollPhysics(),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(8),
                  color:kWhiteColor
                ),
                child: TabWidget(items:_categories,
                  onTabSelected: (index) {
                    print("Selected tab: $index");
                  },),
              ),
            ),
            SizedBox(height:10,),
            Container(
              height:32,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(30),
                border:Border.all(color:kPrimaryColor)
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                MyText(text: "Create Company",color:kPrimaryColor,size:12,weight:FontWeight.w600,),
               SizedBox(width:5,),
               Icon(Icons.add,color:kPrimaryColor,size:18,)
              ],),
            ),
            SizedBox(height:10,),
            ListView.builder(
              itemCount:5,
                shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
                itemBuilder: (context,i){
              return CompanyWidget();
            })
          ],),
        ),
      ),
    );
  }
}
