import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_final_project/core/utils/app_style.dart';
import 'package:iti_final_project/core/utils/color_manager.dart';

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
    scaffoldBackgroundColor: ColorManager.backGround,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.secondaryColor,
        minimumSize: const Size(double.infinity, 67),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(

      hintStyle: AppStyle.textStyle18.copyWith(color: ColorManager.whiteColor),
      filled: true,
      fillColor: ColorManager.whiteGrey,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      prefixIconColor: ColorManager.whiteColor,
      suffixIconColor: ColorManager.whiteColor,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: ColorManager.whiteColor,
        minimumSize: const Size(double.infinity, 67),
        side: BorderSide(width: 2, color: ColorManager.whiteColor),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorManager.whiteColor,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorManager.whiteColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      backgroundColor: ColorManager.buttonNColor,
      type:BottomNavigationBarType.fixed ,
      selectedItemColor: ColorManager.secondaryColor,
      unselectedItemColor: ColorManager.whiteGrey
    ),
  );
  static ThemeData lightTheme=ThemeData.light().copyWith(
    textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(

        backgroundColor: ColorManager.secondaryColor,
        minimumSize: const Size(double.infinity, 67),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(

      hintStyle: AppStyle.textStyle18.copyWith(color: ColorManager.whiteColor),
      filled: true,
      fillColor: ColorManager.whiteGrey,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      prefixIconColor: ColorManager.whiteColor,
      suffixIconColor: ColorManager.whiteColor,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(

        foregroundColor: ColorManager.whiteColor,
        minimumSize: const Size(double.infinity, 67),
        backgroundColor:ColorManager.backGround,
        side: BorderSide(width: 2, color: ColorManager.whiteColor),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorManager.whiteColor,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorManager.whiteColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

        backgroundColor:ColorManager.whiteColor,
        type:BottomNavigationBarType.fixed ,
        selectedItemColor: ColorManager.secondaryColor,
        unselectedItemColor: ColorManager.whiteGrey
    ),


  );

}
