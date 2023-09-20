import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';

class TaskAppBar extends StatelessWidget {
  const TaskAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.only(left: 12,right: 12,top: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: (){
                GoRouter.of(context).pop();
              },
              child: SvgPicture.asset(AppIcons.arrowIcon)),
          Text(AppString.todayTasks,style: AppStyle.textStyle20.copyWith(fontWeight: FontWeight.w500)),
          SvgPicture.asset(AppIcons.editIcon),

        ],),
    );
  }
}
