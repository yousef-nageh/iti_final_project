import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widget/go_to.dart';
import '../../../../../core/widget/is_login.dart';
import '../../../../../core/widget/my_out_line_button.dart';

class LowerButtonWithText extends StatelessWidget {
  const LowerButtonWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const MyOutLineButton(
          imagePass: AppIcons.googleIcon,
          text: AppString.googleText,
        ),
        IsLogin(
          isLogin: false, onPressed: () { goTo(context, AppRouter.kSignUpView); },
        ),

      ],
    );
  }
}
