import 'package:flutter/material.dart';

import '../../../../../constance.dart';
import '../../../../../core/utils/app_String.dart';
import 'row_text.dart';
import 'text_form_with_icon.dart';
import 'upper_text_with_image.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const UpperTextWithText(),
          SizedBox(
            height: size.height * 0.02,
          ),
          const TextFormWithIcon(),
          SizedBox(
            height: size.height * 0.02,
          ),
          RowText(
            text: AppString.completedTasks,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
