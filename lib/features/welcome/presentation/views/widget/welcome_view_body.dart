import 'package:flutter/material.dart';

import 'package:iti_final_project/core/utils/app_String.dart';
import 'package:iti_final_project/core/utils/app_router.dart';
import 'package:iti_final_project/core/widget/go_to.dart';
import 'package:iti_final_project/core/widget/my_button.dart';

import '../../../../../constance.dart';
import 'welcome_image.dart';
import 'logo_with_text.dart';
import 'middel_text.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: Column(
          children: [
            const LogoWithText(),
            SizedBox(
              height: h * 0.04,
            ),
            const WelcomeImage(),
            SizedBox(
              height: h * 0.04,
            ),
            const MiddleText(),
            SizedBox(
              height: h * 0.04,
            ),
            MyButton(
                onPressed: () {
                  goTo(context, AppRouter.kLoginView);
                },
                text: AppString.homeButtonText),
            SizedBox(
              height: h * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
