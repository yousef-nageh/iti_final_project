
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';

class UpperText extends StatelessWidget {
  const UpperText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppString.createYourAccount,style: AppStyle.textStyle24,),
        const SizedBox(height: 23,),
        Text(AppString.fullName,style: AppStyle.textStyle18.copyWith(color: ColorManager.halfWhite),),

      ],);
  }
}
