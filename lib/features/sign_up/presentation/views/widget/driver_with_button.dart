
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/widget/my_driver.dart';
import '../../../../../core/widget/my_out_line_button.dart';

class DriverWithButton extends StatelessWidget {
  const DriverWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Column (
      children: [
        const MyDriver(text: AppString.driverText),
        Padding(
          padding: EdgeInsets.only(top: h * 0.03, bottom: h * 0.02),
          child: const MyOutLineButton(
              text: AppString.googleText, imagePass: AppIcons.googleIcon),
        ),
      ],
    );
  }
}
