import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';
import 'package:himish/view/widgets/my_text_field.dart';

import '../../../generated/assets.dart';
import '../../widgets/my_text_widget.dart';
import 'submission_submitted.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  List<ChatMessage> messages = [
    ChatMessage(
      text:
          "Himish is your trusted neighborhood marketplace — where you can buy, sell, or find anything from apartments and cars to dresses and services. Fast, safe, and easy.",
      isUser: false,
      timestamp: "18:27",
      hasProfilePicture: true,
    ),
    ChatMessage(
      text: "Where your local needs meet smart solutions.",
      isUser: true,
      timestamp: "18:27",
      hasProfilePicture: true,
    ),
    ChatMessage(
      text: "One app for everything around you.",
      isUser: false,
      timestamp: "18:27",
      hasProfilePicture: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Contact us"),
      body: Column(
        children: [
          SizedBox(height:18,),
          CommonImageView(
            imagePath:Assets.imagesContactUs,
          ),
          SizedBox(height:48,),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(message: messages[index]);
              },
            ),
          ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:18.0,vertical:12),
           child: SafeArea(
             child: Row(children: [
               Expanded(child: MyTextField(hint:"Type a message",)),
               SizedBox(width:9,),
               Column(
                 children: [
                   SizedBox(height:18,),
                   GestureDetector(
                     onTap:(){
                       Get.dialog(
                           SubmissionSubmitted());
                     },
                     child: Container(
                       height:50,
                       width:52,
                       decoration:BoxDecoration(
                         borderRadius:BorderRadius.circular(8),
                         color:kPrimaryColor
                       ),
                       child:Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: CommonImageView(
                           svgPath:Assets.iconsSendIc,
                         ),
                       ),
                     ),
                   ),
                 ],
               )

             ],),
           ),
         )
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isUser;
  final String timestamp;
  final bool hasProfilePicture;

  ChatMessage({
    required this.text,
    required this.isUser,
    required this.timestamp,
    this.hasProfilePicture = false,
  });
}

class ChatBubble extends StatelessWidget {
  final ChatMessage message;

  const ChatBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment:
            message.isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!message.isUser && message.hasProfilePicture) ...[
            CircleAvatar(
              radius: 20,
              backgroundColor: kPrimaryColor,
              child: Text(
                'H',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 8),
          ],
          if (!message.isUser && !message.hasProfilePicture)
            SizedBox(width: 52),
          Flexible(
            child: Column(
              crossAxisAlignment: message.isUser
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: message.isUser ? kPrimaryColor : kWhiteColor,
                    borderRadius: message.isUser
                        ? BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))
                        : BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                  ),
                  child: MyText(
                    text: message.text,
                    color: message.isUser ? kWhiteColor : kBlackColor,
                  ),
                ),
                SizedBox(height: 4),
                MyText(
                  text: message.timestamp,
                  size: 12,
                  color: kTextGreyColor,
                ),
              ],
            ),
          ),
          if (message.isUser && message.hasProfilePicture) ...[
            SizedBox(width: 8),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(Assets.imagesProfile),
            ),
          ],
        ],
      ),
    );
  }
}
