import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class UpperItem extends StatelessWidget {
  const UpperItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 175,
      width: 183,
      color: ColorManager.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 7, left: 10, right: 9),
        child: Column(
          children: [
            Text(
              "Real Estate "
                  "Website "
                  "Design",
              style: AppStyle.textStyle21
                  .copyWith(color: ColorManager.blackColor),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Text(
                  "Team members",
                  style: AppStyle.textStyle11.copyWith(
                      color: ColorManager.blackColor,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 11,
                ),
                ...List.generate(
                  3,
                      (index) => CircleAvatar(
                    radius: 10,
                    backgroundImage:
                    AssetImage(ImageManager.testImage),
                  ),
                )
              ],
            ),
            SizedBox(height: 13,),
            Row(children: [
              Text("Completed",style: AppStyle.textStyle11.copyWith(color: ColorManager.blackColor),),
              Spacer(),
              Text("100%",style: AppStyle.textStyle11.copyWith(color: ColorManager.blackColor,fontWeight: FontWeight.bold),),
            ],),
            SizedBox(height: 2,),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                
                color: ColorManager.backGround,
                value: 100,
                minHeight: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
