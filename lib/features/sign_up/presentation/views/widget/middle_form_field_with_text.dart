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
      Padding(
        padding: EdgeInsets.only(top: h * 0.02, bottom: h * 0.03),
        child: MyTextFormField(
            text: AppString.userHintText,
            prefixIconPass: AppIcons.userIcon,
            prefixIconFunction: () {},
            keyboardType: TextInputType.text),
      ),
      Text(
        AppString.emailAddress,
        style:
        AppStyle.textStyle18.copyWith(color: ColorManager.halfWhite),
      ),
      Padding(
        padding: EdgeInsets.only(top: h * 0.02, bottom: h * 0.03),
        child: MyTextFormField(
            text: AppString.emailHintText,
            prefixIconPass: AppIcons.emailIcon,
            prefixIconFunction: () {},
            keyboardType: TextInputType.emailAddress),
      ),
      Text(
        AppString.password,
        style:
        AppStyle.textStyle18.copyWith(color: ColorManager.halfWhite),
      ),
      Padding(
        padding: EdgeInsets.only(top: h * 0.02, bottom: h * 0.03),
        child: MyTextFormField(
            text: AppString.passwordHintText,
            prefixIconPass: AppIcons.passwordIcon,
            prefixIconFunction: () {},
            suffixIconFunction: () {},
            suffixIconPass: AppIcons.passwordEyeIcon,
            keyboardType: TextInputType.visiblePassword),
      ),
    ],
    );
  }
}
