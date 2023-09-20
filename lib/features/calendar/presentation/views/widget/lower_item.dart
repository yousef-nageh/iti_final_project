import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class LowerItem extends StatelessWidget {
  const LowerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(height: 72,
      width: double.infinity,
      color: ColorManager.secondaryColor,
      child: Container(
        margin: EdgeInsets.only(left: 11),
        height: 72,
        width: double.infinity,
        color: ColorManager.buttonNColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 31,top: 13,right: 27,bottom: 13),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wireframe",
                      style: AppStyle.textStyle18.copyWith(
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      "16:00 - 18:30",
                      style: AppStyle.textStyle12.copyWith(

                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                3,
                    (index) => CircleAvatar(
                  radius: 10,
                  backgroundImage:
                  AssetImage(ImageManager.testImage),
                ),
              )

            ],
          ),
        ),
      ),);
  }
}
