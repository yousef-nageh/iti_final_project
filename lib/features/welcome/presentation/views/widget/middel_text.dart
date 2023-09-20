

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';




class MiddleText extends StatelessWidget {
  const MiddleText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(maxLines: 3,AppString.homeMText1,style: AppStyle.textStyle60,),
        Text( maxLines: 1,AppString.homeMText2,style: AppStyle.textStyle60.copyWith(color: ColorManager.secondaryColor),)
      ],
    );
  }
}
