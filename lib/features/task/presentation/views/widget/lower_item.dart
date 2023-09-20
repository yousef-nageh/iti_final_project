import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_icons.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';

class LowerItem extends StatelessWidget {
  const LowerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: double.infinity,
      color: ColorManager.whiteGrey,
      child: Padding(
        padding: const EdgeInsets.only(left:19 ,right:9 ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("User Interviews",style: AppStyle.textStyle18.copyWith(fontWeight: FontWeight.w500),),
            Container(
              height: 40,
              width: 40,
              color: ColorManager.secondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppIcons.trueIconTask,width: 24,height: 24,color: Colors.black,),
              ),
            )
          ],),
      ),
    ) ;
  }
}
