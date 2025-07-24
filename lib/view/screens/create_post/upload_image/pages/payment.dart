import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/screens/create_post/upload_image/pages/payment_successfull.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppbar("Payment"),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(children: [
                SizedBox(height:12,),
                MyText(text: "Ad Cost Summery",size:16,weight:FontWeight.w600,color:kBlackColor,),
                SizedBox(height:12,),
                Container(
                  decoration:kAppBoxDecoration,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      _rowWidget(title: "Total days", price: '20',),
                      SizedBox(height:12,),
                      _rowWidget(title: "Price per day", price: '\$100.00',),
                    ],),
                  ),
                ),
                SizedBox(height:4,),
                Container(
                  decoration:kAppBoxDecoration,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      _rowWidget(title: "Total amount", price: '\$2,000.00',),
                      SizedBox(height:12,),
                      _rowWidget(title: "Sales tx 8.875%", price: '\$177.75',),
                    ],),
                  ),
                ),
                SizedBox(height:12,),
                Container(
                  decoration:kAppBoxDecoration,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _rowWidget(title: "Sub Total", price: '\$2117.75',),
                  ),
                ),
                SizedBox(height:40,),
                Container(
                  decoration:kAppBoxDecoration,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                      MyText(text: 'Use Credits',size:16,color:kBlackColor,weight:FontWeight.w500,),
                      MyText(text: "\$89.00",size:16,color:kPrimaryColor,weight:FontWeight.w600,),
                      Transform.scale(
                        scale:0.5,
                          child: CupertinoSwitch(value: true, onChanged: (val){}))
                    ],),
                  ),
                )
              ],),
            ),
          ),
          Container(
            color:kWhiteColor,
            child:Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(children: [
                MyButton(onTap: (){
                  Get.to(()=>PaymentSuccessfully());
                }, buttonText: "Confirm & Pay now"),

                MyButton(onTap: (){}, buttonText: "Save for Later",backgroundColor:kWhiteColor,outlineColor:kPrimaryColor,fontColor:kPrimaryColor,),
              ],),
            ),
          )
        ],
      ),
    );
  }
  Widget _rowWidget({required String title,required String price}){
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
      MyText(text: title,size:16,color:kBlackColor,),
      MyText(text: price,size:16,color:kBlackColor,weight:FontWeight.w600,),
    ],);
  }
}
