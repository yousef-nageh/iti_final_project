import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class TextWithLogo extends StatelessWidget {
  const TextWithLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column (
        children: [
          SvgPicture.asset(ImageManager.logoImage,height: 91,width:71 ,fit: BoxFit.fill,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(AppString.day,style: AppStyle.textStyle24,),
              Text(AppString.task,style: AppStyle.textStyle24.copyWith(color: ColorManager.secondaryColor),),
            ],
          ),
        ],
      ),
    );
  }
}
