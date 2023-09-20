import 'package:flutter/material.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/widget/my_button.dart';
import '../../../../../core/widget/my_out_line_button.dart';

class UpperButtons extends StatelessWidget {
  const UpperButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: MyButton(onPressed: (){}, text: AppString.chat,height: 47,)),
      SizedBox(width: 20,),
      Expanded(child: MyOutLineButton(text: AppString.groups,height: 47, ))

    ]);
  }
}
