import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widget/go_to.dart';
import '../../../../../core/widget/my_button.dart';
import 'ask_text.dart';

class AskTextWithButton extends StatelessWidget {
  const AskTextWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const AskText(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: h * 0.03),
          child: MyButton(
              onPressed: () {
                goTo(context, AppRouter.kLoginView);
              },
              text: AppString.signUpText),
        ),
      ],
    );
  }
}
