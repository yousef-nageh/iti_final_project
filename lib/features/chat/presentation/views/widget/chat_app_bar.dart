import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12,top: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppIcons.arrowIcon),
          Text(AppString.messages,style: AppStyle.textStyle20.copyWith(fontWeight: FontWeight.w500),),
          SvgPicture.asset(AppIcons.editIcon),

        ],),
    );
  }
}
