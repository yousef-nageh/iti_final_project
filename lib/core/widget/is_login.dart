import 'package:flutter/material.dart';

import '../utils/app_style.dart';
import '../utils/color_manager.dart';

class IsLogin extends StatelessWidget {
  final bool isLogin;
  final Function() onPressed;
  const IsLogin({super.key,  this.isLogin=false, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return   Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(isLogin ? "Already have an account":"Don’t have an account?",style: AppStyle.textStyle16,),
        TextButton(onPressed: onPressed,
            child: Text(isLogin ? "Log In":"Sign Up",style: AppStyle.textStyle16.copyWith(color: ColorManager.secondaryColor),))
      ],);
  }
}
