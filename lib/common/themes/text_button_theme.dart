import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextButtonThemeData {
  CustomTextButtonThemeData._();

  static final TextButtonThemeData lightThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      foregroundColor: CustomColors.primaryColor,
    ),
  );
}
