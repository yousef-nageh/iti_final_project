import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iti_final_project/constance.dart';
import 'package:iti_final_project/core/utils/app_router.dart';

import 'package:iti_final_project/core/utils/color_manager.dart';
import 'package:iti_final_project/core/widget/go_to.dart';
import 'package:iti_final_project/core/widget/is_login.dart';
import 'package:iti_final_project/core/widget/my_button.dart';
import 'package:iti_final_project/core/widget/my_driver.dart';
import 'package:iti_final_project/core/widget/my_out_line_button.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/widget/my_text_form_field.dart';
import '../../../../login/presentation/views/widget/text_with_logo.dart';
import 'ask_text.dart';
import 'ask_text_with_button.dart';
import 'driver_with_button.dart';
import 'middle_form_field_with_text.dart';
import 'upper_text.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWithLogo(),
            SizedBox(
              height: h * 0.04,
            ),
            const UpperText(),
            const MiddleFormFieldWithText(),
            const AskTextWithButton(),
            const DriverWithButton(),
            IsLogin(
              onPressed: () {
                goTo(context, AppRouter.kLoginView);
              },
              isLogin: true,
            ),
            SizedBox(
              height: h * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
