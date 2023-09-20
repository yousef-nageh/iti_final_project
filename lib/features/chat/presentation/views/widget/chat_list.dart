import 'package:flutter/material.dart';
import 'package:iti_final_project/features/chat/presentation/views/widget/chat_Item.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.separated (
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) =>ChatItem(),
      separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 33,),
       itemCount: 5,);
  }
}
