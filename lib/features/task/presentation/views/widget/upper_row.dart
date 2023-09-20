import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/icon_broken.dart';
import '../../../../../core/utils/image_manager.dart';

class UpperRow extends StatelessWidget {
  const UpperRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Row(
          children: [
            Container(
              height: 47,
              width: 47,
              color: ColorManager.secondaryColor,
              child: Icon(IconBroken.Calendar,color: ColorManager.blackColor,),

            ),
            SizedBox(width: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(maxLines: 1,
                  "Due Date",style: AppStyle.textStyle11.copyWith(color: ColorManager.halfWhite),),
                SizedBox(height: 3,),
                Text(
                  maxLines: 1,
                  "Due Date",style: AppStyle.textStyle18,)
              ],)
          ],
        ),
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Container(
              height: 47,
              width: 47,
              color: ColorManager.secondaryColor,
              child: Icon(IconBroken.Calendar,color: ColorManager.blackColor,),

            ),
            SizedBox(width: 14,),
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Project Team",style: AppStyle.textStyle11.copyWith(color: ColorManager.halfWhite),),
                SizedBox(height: 3,),
                Row(
                  children: [
                    ...List.generate(
                      3,
                          (index) => CircleAvatar(
                        radius: 10,
                        backgroundImage:
                        AssetImage(ImageManager.testImage),
                      ),
                    )
                  ],)

              ],
            )
          ],
        ),
      ),
    ],) ;
  }
}
