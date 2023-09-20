import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';

class AskText extends StatelessWidget {
  const AskText({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        SvgPicture.asset(
          AppIcons.trueIcon,
          height: 24,
          width: 24,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppString.haveRead,
                  style: AppStyle.textStyle14
                      .copyWith(color: ColorManager.halfWhite),
                ),
                TextSpan(
                  text: AppString.privacyPolicy,
                  style: AppStyle.textStyle14
                      .copyWith(color: ColorManager.secondaryColor),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
