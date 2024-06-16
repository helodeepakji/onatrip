import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomElevatedButtonThemeData {
  CustomElevatedButtonThemeData._();

  static ElevatedButtonThemeData lightThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColors.primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

class CustomOutlineButtonThemeData {
  CustomOutlineButtonThemeData._();

  static OutlinedButtonThemeData lightThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

class CustomIconButtonThemeData {
  CustomIconButtonThemeData._();

  static IconButtonThemeData lightThemeData = IconButtonThemeData(
    style: IconButton.styleFrom(
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
    ),
  );
}
