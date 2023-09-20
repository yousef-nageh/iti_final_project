import 'package:flutter/material.dart';
import 'package:iti_final_project/constance.dart';
import 'package:iti_final_project/core/utils/app_String.dart';
import 'package:iti_final_project/core/widget/my_button.dart';

import 'widget/chat_app_bar.dart';
import 'widget/chat_list.dart';
import 'widget/upper_buttons.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
   var size= MediaQuery.sizeOf(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: Column (
          children: [
            ChatAppBar(),
            SizedBox(height: 36,),
            UpperButtons(),
            SizedBox(height: 36,),
            ChatList(),
            SizedBox(height: 52,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
              SizedBox(

                width: size.width*0.5,
                  child: MyButton(onPressed: (){}, text: AppString.startChat,height: 57,)),

            ],)


          ],


        ),
      ),
    );
  }
}
