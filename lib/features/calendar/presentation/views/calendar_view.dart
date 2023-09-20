import 'package:flutter/material.dart';
import 'package:iti_final_project/core/utils/app_String.dart';
import 'package:iti_final_project/features/calendar/presentation/views/widget/lower_list.dart';

import '../../../../constance.dart';
import '../../../../core/utils/app_style.dart';
import 'widget/calendar_app_bar.dart';
import 'widget/middle_container.dart';
import 'widget/upper_list.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            CalendarAppBar(),
            Padding(
              padding: EdgeInsets.only(left: kPadding, bottom: 26),
              child: Text(
                "November",
                style: AppStyle.textStyle20,
              ),
            ),
            UpperList(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 26),
                    child: Text(
                      AppString.todayTasks,
                      style: AppStyle.textStyle20,
                    ),
                  ),
                  MiddleContainer(),
                  SizedBox(height: 18,),
                  LowerList(),
                  SizedBox(height: 18,),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
