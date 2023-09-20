import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class UpperItem extends StatelessWidget {
  const UpperItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage(ImageManager.testImage),

      ),
      SizedBox(width: 16,),
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Olivia Anna",style: AppStyle.textStyle14.copyWith(fontWeight: FontWeight.w600)),
              SizedBox(width: 2,),
              Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  "left a comment in task",style: AppStyle.textStyle14.copyWith(fontWeight: FontWeight.w600,color: ColorManager.halfWhite)),

            ],
          ),
          Text(maxLines: 1,
              overflow:TextOverflow.ellipsis ,
              "Mobile App Design Project",style: AppStyle.textStyle14.copyWith(fontWeight: FontWeight.w600,color: ColorManager.secondaryColor)),


        ],)),
      SizedBox(width: 17,),
      Text("31 min",style: AppStyle.textStyle8,),

    ],);
  }
}
