import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container(
        height: h*0.35,
        width: double.infinity,
        color: ColorManager.whiteColor,

        child: SvgPicture.asset(ImageManager.homeImage));
  }
}
