import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 72,
      width: double.infinity,
      color: ColorManager.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "User Interviews",
                    style: AppStyle.textStyle18.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ColorManager.blackColor,
                    ),
                  ),
                  Text(
                    "16:00 - 18:30",
                    style: AppStyle.textStyle12.copyWith(
                      color: ColorManager.blackColor,
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
    );
  }
}
