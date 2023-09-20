import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_style.dart';

class MyOutLineButton extends StatelessWidget {
  final String text;
  final String? imagePass;
  final double? height;
  const MyOutLineButton({super.key, required this.text,  this.imagePass, this.height,});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: height==null? null: Size.fromHeight(height??0),
      ),
        onPressed: (){}, child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(imagePass !=null)
         SvgPicture.asset(imagePass??"",height: 24,width: 24,),
        if(imagePass !=null)
        SizedBox(width: 12,),
        Text(text,style: AppStyle.textStyle18.copyWith(fontWeight: FontWeight.w500),),
      ],));

  }
}
