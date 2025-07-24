import 'package:flutter/material.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_text_field.dart';

import '../../../constant/app_colors.dart';
import '../../../generated/assets.dart';
import '../../widgets/common_image_widget.dart';
import '../../widgets/my_text_widget.dart';

class EditProfile extends StatelessWidget {
   EditProfile({super.key});
final TextEditingController _nameController=TextEditingController(text:"Mark Jons");
final TextEditingController _passwordController=TextEditingController(text:"Nabeel");
final TextEditingController _newPasswordController=TextEditingController(text:"Nabeel");
final TextEditingController _emailController=TextEditingController(text:"markjohnson@example.com");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppbar("Personal information"),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:18.0),
        child: Column(children: [
          SizedBox(height:38,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CommonImageView(
                    height:100,
                    width:100,
                    radius:100,
                    imagePath:Assets.imagesProfile,
                  ),
                  Positioned(
                    right:0,
                    bottom:0,
                    child: Container(
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          border:Border.all(color:kWhiteColor,width:0.5),
                          color:kPrimaryColor
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CommonImageView(
                          svgPath:Assets.iconsCamera,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height:18,),
          MyText(text: "Mark Johnson",size:18,weight:FontWeight.w700,color:kBlackColor,),
          MyText(text: "markjohnson@example.com",color:kTextGreyColor,),
          SizedBox(height:18,),
          MyTextField(label:"Full name",hint:"",controller:_nameController,),
          MyTextField(label:"Email",hint:"",controller:_emailController,),
          MyTextField(label:"Old Password",hint:"",controller:_passwordController,suffixIcon:Icon(Icons.visibility_off_outlined,color:kTextColor,),isObSecure:true,),
          MyTextField(label:"New Password",hint:"",controller:_newPasswordController,suffixIcon:Icon(Icons.visibility_off_outlined),isObSecure:true,),
        ],),
      ),
    );
  }
}
