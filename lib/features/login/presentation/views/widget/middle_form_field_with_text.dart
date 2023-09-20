import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widget/my_text_form_field.dart';

class MiddleFormFieldWithText extends StatelessWidget {
  const MiddleFormFieldWithText({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Column (
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      MyTextFormField(
        text: AppString.emailHintText,
        prefixIconPass: AppIcons.emailIcon,
        prefixIconFunction: () {},
        keyboardType: TextInputType.emailAddress,
      ),
      SizedBox(
        height: h * 0.03,
      ),
      Text(
        AppString.password,
        style:
        AppStyle.textStyle18.copyWith(color: ColorManager.halfWhite),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: h * 0.02),
        child: MyTextFormField(
          text: AppString.passwordHintText,
          prefixIconPass: AppIcons.passwordIcon,
          suffixIconPass: AppIcons.passwordEyeIcon,
          prefixIconFunction: () {},
          suffixIconFunction: () {},
          keyboardType: TextInputType.emailAddress,
        ),
      ),
      Align(
          alignment: Alignment.topRight,
          child: Text(
            AppString.forgotPassword,
            style: AppStyle.textStyle16.copyWith(
              color: ColorManager.halfWhite,
            ),
          )),
    ],
    );
  }
}
