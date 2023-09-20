import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_String.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widget/my_text_form_field.dart';

class TextFormWithIcon extends StatelessWidget {
  const TextFormWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
            child: MyTextFormField(
                text: AppString.searchTasks,
                prefixIconPass: AppIcons.searchIcon,
                prefixIconFunction: () {},
                keyboardType: TextInputType.text)),
        const SizedBox(width: 16,),
        InkWell(
          splashColor:   ColorManager.whiteColor,
          onTap: (){

          },
          child: Container(

            height: 57,
            width: 57,
            color: ColorManager.secondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(17),
              child: SvgPicture.asset(AppIcons.settingIcon,height: 24,width: 24,),
            ),
          ),
        )
      ],
    );
  }
}
