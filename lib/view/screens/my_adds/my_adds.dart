import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import 'tabs/post_adds.dart';
import 'tabs/running_adds.dart';

class MyAdds extends StatelessWidget {
  const MyAdds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppbar("My Ads"),
      body:DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Column(children: [
            SizedBox(height:10,),
            Container(
              height:36,
              clipBehavior:Clip.none,
              decoration:BoxDecoration(
                color:kWhiteColor,
                borderRadius:BorderRadius.circular(8)
              ),
              child: TabBar(
                labelPadding:EdgeInsets.zero,
                indicatorSize:TabBarIndicatorSize.tab,
                indicator:BoxDecoration(
                  color:kPrimaryColor,
                  borderRadius:BorderRadius.circular(8)
                ),
                dividerColor:Colors.transparent,
              labelColor:kWhiteColor,
              unselectedLabelColor:kPrimaryColor,
              unselectedLabelStyle:TextStyle(
                  fontSize:12,
                  color:kPrimaryColor,
                  fontWeight: FontWeight.w400
              ),
              labelStyle: TextStyle(
                fontSize:12,
                  color:kPrimaryColor,
                  fontWeight: FontWeight.w600
              ),
              tabs: [
                Tab(text: "Running Ads (01)"),
                Tab(text: "Post Ads"),
                Tab(text: "Others"),
              ],
                      ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  RunningAdds(),
                  PostAdds(),
                  Center(child: Text("Others content")),
                ],
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
