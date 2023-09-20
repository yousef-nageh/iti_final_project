import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class MeddleRow extends StatelessWidget {
  const MeddleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppString.projectProgress,style: AppStyle.textStyle18.copyWith(fontWeight: FontWeight.w500)),
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(ImageManager.circelImage,height:59 ,width:59 ,color: ColorManager.secondaryColor,),
            Text("100%",style: AppStyle.textStyle11.copyWith(fontWeight: FontWeight.bold),)
          ],
        )

      ],);
  }
}
