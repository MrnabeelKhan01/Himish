// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:xces/view/constant/app_colors.dart';
//
//
// import '../../generated/assets.dart';
// import '../screens/customer_role/discover/bottom_sheets/filter_sheet.dart';
//
// class SearchField extends StatelessWidget {
//       SearchField({super.key, required this.controller,this.isShowFilter=true});
// final TextEditingController controller;
// bool isShowFilter;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller:controller,
//       decoration:InputDecoration(
//         contentPadding:EdgeInsets.only(left:16,right:16,top:8,bottom:8),
//           hintText:"Search for great deals near you...",
//           hintStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:kGreyColor),
//           enabledBorder:OutlineInputBorder(
//               borderRadius:BorderRadius.circular(8),
//               borderSide:BorderSide(color:kBorderColor,)
//           ),
//           focusedBorder:OutlineInputBorder(
//             borderSide:BorderSide(color:kBorderColor,),
//             borderRadius:BorderRadius.circular(8),
//           ),
//           fillColor:kWhiteColor,
//           filled:true,
//           prefixIcon:Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: SvgPicture.asset(Assets.iconsSearchIc),
//           ),
//           suffixIcon:isShowFilter?IconButton(icon: SvgPicture.asset(Assets.iconsSort), onPressed:(){
//             Get.bottomSheet(
//                 backgroundColor:kWhiteColor,
//                 isScrollControlled:true,
//                 FilterSheet());
//           },):SizedBox()
//       ),
//
//     );
//   }
// }
