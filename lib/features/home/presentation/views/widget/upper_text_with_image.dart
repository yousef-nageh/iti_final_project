import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class UpperTextWithText extends StatelessWidget {
  const UpperTextWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppString.welcomeBack,style: AppStyle.textStyle11.copyWith(color: ColorManager.secondaryColor),),
              Text("Fazil Laghari",style: AppStyle.textStyle22,),
            ],
          ),

          Spacer(),
          CircleAvatar(radius: 27,
            backgroundImage: AssetImage(ImageManager.testImage),
          )
        ],
      ),
    );
  }
}
