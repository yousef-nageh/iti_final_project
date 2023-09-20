
import 'package:flutter/material.dart';
import 'package:iti_final_project/core/utils/app_String.dart';
import 'package:iti_final_project/core/utils/app_style.dart';
import 'package:iti_final_project/features/notification/presentation/views/widget/upper_and_lower_list.dart';


import 'widget/notification_aap_bar.dart';


class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const NotificationAppBar(),
        Padding(
          padding: const EdgeInsets.only(left: 41,right: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 33,bottom: 16),
                child: Text(AppString.news,style: AppStyle.textStyle20.copyWith(fontWeight: FontWeight.w500),),
              ),

              const UpperList(),
              Padding(
                padding: const EdgeInsets.only(top: 33,bottom: 16),
                child: Text(AppString.earlier,style: AppStyle.textStyle20.copyWith(fontWeight: FontWeight.w500),),

              ),
              const UpperList(),
        const SizedBox(height: 23,),


            ],
          ),
        )



          ],
        ),
      ),
    );
  }
}
