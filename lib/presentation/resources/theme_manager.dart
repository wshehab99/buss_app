import 'package:flutter/material.dart';

import 'color_manger.dart';
import 'size_manager.dart';

abstract class ThemeManager {
  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: ColorManager.white,
    primaryColor: ColorManager.primary,
    //app bar
    appBarTheme: const AppBarTheme(
        iconTheme:
            IconThemeData(color: ColorManager.darkGrey, size: SizeManager.s25),
        color: ColorManager.white,
        titleTextStyle: TextStyle(
          fontSize: SizeManager.s40,
          fontWeight: FontWeight.bold,
          color: ColorManager.darkGrey,
        ),
        elevation: SizeManager.s0),

//text theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: SizeManager.s34,
        fontWeight: FontWeight.bold,
        color: ColorManager.white,
      ),
      titleMedium: TextStyle(
        fontSize: SizeManager.s17,
        fontWeight: FontWeight.bold,
        color: ColorManager.white,
      ),
      bodyLarge: TextStyle(
        fontSize: SizeManager.s20,
        fontWeight: FontWeight.bold,
        color: ColorManager.darkGrey,
      ),
      bodyMedium: TextStyle(
        fontSize: SizeManager.s16,
        fontWeight: FontWeight.bold,
        color: ColorManager.darkGrey,
      ),
      bodySmall: TextStyle(
        fontSize: SizeManager.s12,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkGrey,
      ),
      labelSmall: TextStyle(
        fontSize: SizeManager.s16,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightGrey,
      ),
      labelMedium: TextStyle(
        fontSize: SizeManager.s7,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightBlue,
      ),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      iconColor: ColorManager.primaryOpacity,

      // content padding
      contentPadding: const EdgeInsets.symmetric(
        vertical: SizeManager.s7,
      ),
      // hint style
      hintStyle: const TextStyle(
        fontSize: SizeManager.s13,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkGreyOpacity,
      ),
      labelStyle: const TextStyle(
        fontSize: SizeManager.s13,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkGreyOpacity,
      ),
      errorStyle: const TextStyle(
        fontSize: SizeManager.s13,
        fontWeight: FontWeight.w400,
        color: ColorManager.error,
      ),

      // enabled border style
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: ColorManager.grey.withOpacity(0.48), width: SizeManager.s1),
      ),
      // focused border style
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
            color: ColorManager.primaryOpacity, width: SizeManager.s1),
      ),

      // error border style
      errorBorder: const UnderlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.error, width: SizeManager.s1),
      ),
      // focused border style
      focusedErrorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
            color: ColorManager.primaryOpacity, width: SizeManager.s1),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(
              fontSize: SizeManager.s16,
              fontWeight: FontWeight.w400,
              color: ColorManager.white,
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color?>(
            ColorManager.primary,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                SizeManager.s21,
              ),
            ),
          )),
    ),
    iconTheme:
        const IconThemeData(color: ColorManager.white, size: SizeManager.s18),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorManager.lightBlue,
      elevation: 0,
      selectedIconTheme:
          IconThemeData(color: ColorManager.white, size: SizeManager.s45),
      unselectedIconTheme:
          IconThemeData(color: ColorManager.white, size: SizeManager.s25),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    // floating action button theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ColorManager.primary,
        elevation: SizeManager.s0,
        iconSize: SizeManager.s22),
    bottomAppBarTheme: const BottomAppBarTheme(
        color: ColorManager.lightBlue,
        shape: CircularNotchedRectangle(),
        elevation: SizeManager.s0),
  );
}
