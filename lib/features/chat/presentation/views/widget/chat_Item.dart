import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(children: [
      CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage(ImageManager.testImage),

      ),
      SizedBox(width: 16,),
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Olivia Anna",style: AppStyle.textStyle14.copyWith(fontWeight: FontWeight.w600)),
          Text(maxLines: 1,
              overflow:TextOverflow.ellipsis ,
              "Hi, please check the last task, that I.... ",style: AppStyle.textStyle14),


        ],)),
      SizedBox(width: 29,),
      Column(children: [

        Text("31 min",style: AppStyle.textStyle8,),
        CircleAvatar(radius: 3,
          backgroundColor: ColorManager.secondaryColor,
        )
      ],)
    ],);
  }
}
