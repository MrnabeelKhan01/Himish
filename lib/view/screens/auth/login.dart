import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/constant/app_styles.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/my_button.dart';
import 'package:himish/view/widgets/my_text_field.dart';
import 'package:himish/view/widgets/my_text_widget.dart';
import 'package:himish/view/widgets/rich_texts.dart';

import '../../../generated/assets.dart';
import '../../widgets/social_login.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              SizedBox(height:18,),
              CommonImageView(
                height: 36,
                imagePath: Assets.imagesAppLogo,
              ),

              Expanded(
                child: ListView(
                  children: [
                    SizedBox(height:60,),
                    Texts(children: [
                      TextSpan(
                        text: "Welcome Back 👋\nto ",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: kBlackColor),
                      ),
                      TextSpan(
                        text: "Himish",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: kPrimaryColor),
                      )
                    ]),
                    SizedBox(height:8,),
                    MyText(
                      text: "Hello there, login to continue",
                      color: kTextColor,
                      weight: FontWeight.w300,
                    ),
                    SizedBox(height:18,),
                    MyTextField(
                      hint: "markjohnson@example.com",
                      label: "Email",
                    ),
                    MyTextField(
                      hint: "•••••••••••",
                      label: "Password",
                      isObSecure: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CommonImageView(
                          svgPath: Assets.iconsSecureIcon,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                        MyText(text: "Forgot Password ?",size:14,weight:FontWeight.w600,color:kPrimaryColor,)
                      ],
                    ),
                    SizedBox(height:48,),
                    MyButton(onTap: (){}, buttonText: "Login"),
                    SizedBox(height:38,),
                    Row(children: [
                      Expanded(child: kAppDivider),
                      SizedBox(width:28,),
                      MyText(text: "Or continue with social account",size:14,color:kTextColor,),
                      SizedBox(width:28,),
                      Expanded(child: kAppDivider),
                    ],),
                    SizedBox(height:38,),
                    SocialLogin(logo:Assets.imagesGoogle, title: 'Google', onTapped: () {  },)
                  ],
                ),
              ),
              SafeArea(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Texts(
                      textAlign:TextAlign.center,
                        children: [
                      TextSpan(
                        text:"Don't have an Account?  ",
                        style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color:kTextColor),
                      ),
                      TextSpan(
                        text:"Sign up",
                        style:TextStyle(fontSize:14,fontWeight:FontWeight.w600,color:kPrimaryColor),
                      )
                    ]),
                  ],
                ),
              ),
              SizedBox(height:18,)
            ],
          ),
        ),
      ),
    );
  }
}
