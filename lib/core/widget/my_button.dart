import 'package:flutter/material.dart';
import 'package:iti_final_project/core/utils/color_manager.dart';

import '../utils/app_String.dart';
import '../utils/app_style.dart';

class MyButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double ?height;

  const MyButton({super.key, required this.onPressed, required this.text, this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: height==null? null: Size.fromHeight(height??0),
      ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyle.bTextStyle18.copyWith(color: ColorManager.blackColor),
        ));
  }
}
