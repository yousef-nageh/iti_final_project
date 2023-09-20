import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import '../utils/color_manager.dart';

class MyDriver extends StatelessWidget {
  final String text;
  const MyDriver({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: ColorManager.halfWhite,

          ),
        ),
        SizedBox(width: 14,),
        Text(text,style: AppStyle.textStyle16.copyWith(color: ColorManager.halfWhite),),
        SizedBox(width: 14,),
        Expanded(
          child: Container(
            height: 1,
            color: ColorManager.halfWhite,

          ),
        ),
      ],
    );
  }
}
