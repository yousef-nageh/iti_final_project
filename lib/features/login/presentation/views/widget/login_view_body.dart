import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iti_final_project/constance.dart';
import 'package:iti_final_project/core/utils/app_router.dart';
import 'package:iti_final_project/core/widget/go_to.dart';
import 'package:iti_final_project/core/widget/my_button.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';
import '../../../../../core/widget/is_login.dart';
import '../../../../../core/widget/my_driver.dart';
import '../../../../../core/widget/my_out_line_button.dart';
import '../../../../../core/widget/my_text_form_field.dart';
import 'lower_button_with_text.dart';
import 'middle_form_field_with_text.dart';
import 'text_with_logo.dart';
import 'upper_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWithLogo(),
            SizedBox(
              height: h * 0.04,
            ),
            const UpperText(),
            SizedBox(
              height: h * 0.02,
            ),
            const MiddleFormFieldWithText(),
            SizedBox(
              height: h * 0.04,
            ),
            MyButton(
              onPressed: () {goTo(context, AppRouter.kHomeView);},
              text: AppString.login,
            ),
            SizedBox(
              height: h * 0.04,
            ),
            const MyDriver(
              text: AppString.driverText,
            ),
            SizedBox(
              height: h * 0.04,
            ),
            const LowerButtonWithText(),

          ],
        ),
      ),
    );
  }
}
