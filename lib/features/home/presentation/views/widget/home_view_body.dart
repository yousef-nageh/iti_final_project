import 'package:flutter/material.dart';
import 'package:iti_final_project/constance.dart';
import 'package:iti_final_project/core/utils/app_String.dart';

import 'lower_list.dart';
import 'row_text.dart';
import 'upper_list.dart';
import 'upper_part.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 28,),
            UpperPart(),
            UpperList(),
            SizedBox(
              height: 34,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: Column(

                children: [
                  RowText(
                    text: AppString.ongoingProjects,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  LowerList(),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
