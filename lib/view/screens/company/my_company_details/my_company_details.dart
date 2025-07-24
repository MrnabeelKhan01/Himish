import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../../constant/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../widgets/common_image_widget.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/my_text_widget.dart';
import '../../../widgets/tab_widget.dart';
import '../../my_adds/tabs/post_adds.dart';
import '../widgets/social_tags.dart';

class MyCompanyDetails extends StatefulWidget {
   const MyCompanyDetails({super.key});

  @override
  State<MyCompanyDetails> createState() => _MyCompanyDetailsState();
}

class _MyCompanyDetailsState extends State<MyCompanyDetails> {
  final List<String>  _categories=[
    "Information",
    "Showcase",
    "Posts",
  ];
int selectedIndex=1;
void setIndex(int i){
  setState(() {
    selectedIndex=i;
  });
}
int get getIndex=>selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppbar("Company Details"),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: SingleChildScrollView(
          physics:BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height:10,),
              Row(

                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CommonImageView(
                            height: 80,
                            width: 80,
                            imagePath: Assets.imagesCompany,
                          ),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Sharp Security Systems",
                                size: 12,
                                weight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                              Row(
                                children: [
                                  CommonImageView(
                                    svgPath: Assets.iconsLocationIc,
                                    height:12,
                                  ),
                                  SizedBox(width:3,),
                                  MyText(
                                    text: "Brooklyn, NY",
                                    size: 10,
                                    color: kTextGreyColor,
                                  ),
                                  SizedBox(width:12,),
                                  MyText(
                                    decoration:TextDecoration.underline,
                                    text: "+2 others",
                                    size: 10,
                                    color: kPrimaryColor,
                                    weight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              SizedBox(height:4,),
                              Row(
                                children: [
                                  CommonImageView(
                                    svgPath: Assets.iconsContractorIc,
                                  ),
                                  SizedBox(width:3,),
                                  MyText(
                                    text: "Contractor",
                                    size: 12,
                                    weight: FontWeight.w500,
                                    color: kPrimaryColor,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: Row(
                                  children: [
                                    CommonImageView(
                                      svgPath: Assets.iconsCFar,
                                    ),
                                    MyText(text: "Paint & Finishing",size:12,color:kPrimaryColor,weight:FontWeight.w600,)
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.end,
                    children: [
                      MyButton(onTap: (){}, buttonText: "Contractor",height:20,width:Get.width/5,fontSize:10,fontWeight:FontWeight.w500,),
                      Row(children: [
                        CommonImageView(
                          svgPath:Assets.iconsRattingIc,
                        ),
                        SizedBox(width:4,),
                        MyText(text: "4.5 ",color:kBlackColor,size:12,weight:FontWeight.w600,),
                        MyText(text: "(14K)",color:kTextGreyColor,size:12,),
                      ],),
                    ],)
                ],
              ),
              SizedBox(height:12,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  SocialTags(icon: Assets.iconsLike, count: "(32)"),
                  SocialTags(icon: Assets.iconsShareIc, count: "(4)"),
                  SocialTags(icon: Assets.iconsBookmarkIc, count: "(32)"),
                ],),

              SizedBox(height:12,),
              Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(8),color:kWhiteColor
                ),
                height:36,
                child: ListView.builder(
                  shrinkWrap:true,
                    scrollDirection:Axis.horizontal,
                    itemCount:_categories.length,
                    itemBuilder: (context,i){
                  return  GestureDetector(
                    onTap: () {
                      setIndex(i);
                    },
                    child: Container(
                      width:Get.width/3.3,
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                      decoration: BoxDecoration(
                        color: getIndex==i ? kPrimaryColor : kWhiteColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MyText(
                        text:_categories[i],

                        size: 12,
                        weight: getIndex==i ? FontWeight.w600 : FontWeight.w400,
                        color: getIndex==i ? Colors.white : kPrimaryColor,
                      ),
                    ),
                  );
                }),
              ),

              SizedBox(height:12,),
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
              SizedBox(height:12,),
             if(selectedIndex==0) GridView.builder(
                  shrinkWrap:true,
                  itemCount:9,
                  physics:NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                      childAspectRatio:0.7,
                      crossAxisSpacing:4,
                      mainAxisSpacing:4

                  ), itemBuilder: (context,i){
                return CommonImageView(
                  radius:8,
                  imagePath:Assets.imagesDetails,
                );
              })else PostAdds()
            ],
          ),
        ),
      ),
    );
  }
}
