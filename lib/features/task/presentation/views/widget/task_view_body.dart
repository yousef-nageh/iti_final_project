import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_final_project/constance.dart';
import 'package:iti_final_project/core/utils/color_manager.dart';
import 'package:iti_final_project/features/task/presentation/views/widget/upper_row.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_style.dart';
import 'lower_list.dart';
import 'middle_row.dart';
import 'task_app_bar.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TaskAppBar(),
              const SizedBox(
                height: 57,
              ),
              const Text(
                AppString.realEstateAppDesign,
                style: AppStyle.textStyle21,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 27, bottom: 30),
                child: UpperRow(),
              ),
              Text(
                AppString.projectDetails,
                style: AppStyle.textStyle18.copyWith(fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9.0, bottom: 13),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                    style: AppStyle.textStyle12
                        .copyWith(color: ColorManager.halfWhite)),
              ),
              const MeddleRow(),

              Padding(
                padding: const EdgeInsets.only(top: 19,bottom: 22),
                child: Text(AppString.allTasks,style: AppStyle.textStyle18.copyWith(fontWeight: FontWeight.w500),),
              ),
              const LowerList()

            ],
          ),
        ),
      ),
    );
  }
}
