import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 41,top: 39,right: 41,),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.arrowIcon),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(AppString.notifications,style: AppStyle.textStyle20.copyWith(fontWeight: FontWeight.w500),),
                SizedBox(height: 33,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
