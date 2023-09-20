import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';

class CalendarAppBar extends StatelessWidget {
  const CalendarAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.only(top: 38,left: 41,right:29 ,bottom: 42),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppIcons.arrowIcon,width: 24,height: 24,),
          Text(AppString.schedule,style: AppStyle.textStyle20.copyWith(fontWeight: FontWeight.w500),),
          SvgPicture.asset(AppIcons.addSquare,width: 24,height: 24,),

        ],
      ),
    );
  }
}
