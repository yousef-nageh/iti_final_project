import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';

class RowText extends StatelessWidget {
  final String text;
  const RowText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return    Row(children: [
      Text(text,style:AppStyle.textStyle20 ,),
      const Spacer(),
      Text(AppString.seeAll,style: AppStyle.textStyle16.copyWith(color: ColorManager.secondaryColor,fontWeight: FontWeight.w400,)),

    ],);
  }
}
