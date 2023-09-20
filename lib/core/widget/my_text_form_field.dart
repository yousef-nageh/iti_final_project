import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyTextFormField extends StatelessWidget {
  final String text;
  final String prefixIconPass;
  final String? suffixIconPass;
  final Function() prefixIconFunction;
  final Function()? suffixIconFunction;
  final TextInputType keyboardType;


  const MyTextFormField(
      {super.key,
      required this.text,
      required this.prefixIconPass,
      this.suffixIconPass,
      required this.prefixIconFunction,
      this.suffixIconFunction, required this.keyboardType});


  @override
  Widget build(BuildContext context) {
    return TextFormField(

      onChanged: (value){
        print(value);
      },
      keyboardType:keyboardType ,
      decoration: InputDecoration(
        suffixIcon:suffixIconPass == null? null:  IconButton(
            onPressed:suffixIconFunction,
            icon: SvgPicture.asset(suffixIconPass??""),
            iconSize: 24),
        hintText: text,
        prefixIcon: IconButton(
            onPressed: prefixIconFunction,
            icon: SvgPicture.asset(prefixIconPass),
            iconSize: 24),
      ),
    );
  }
}
