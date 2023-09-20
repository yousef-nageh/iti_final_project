import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iti_final_project/core/utils/app_String.dart';
import 'package:iti_final_project/core/utils/color_manager.dart';

import '../../../../../constance.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/image_manager.dart';

class LogoWithText extends StatelessWidget {
  const LogoWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23, left: 17),
            child: SvgPicture.asset(
              ImageManager.logoImage,
              height: 47,
              width: 61,
            ),
          ),
          Row(
            children: [
              Text(
                AppString.day,
                style: AppStyle.textStyle16
                    .copyWith(fontWeight: FontWeight.w600, fontFamily: fonts),
              ),
              Text(
                AppString.task,
                style: AppStyle.textStyle16.copyWith(
                    color: ColorManager.secondaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: fonts),
              ),
            ],
          )
        ],
      ),
    );
  }
}
