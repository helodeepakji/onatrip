import 'package:flutter/material.dart';

import '../constants/colors.dart';

class InputDecorationThemeData {
  InputDecorationThemeData._();

  static InputDecorationTheme lightThemeData = InputDecorationTheme(
    isDense: true,
    prefixIconColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.focused)) {
        return CustomColors.primaryColor;
      }
      return Colors.grey;
    }),
    suffixIconColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.focused)) {
        return CustomColors.primaryColor;
      }
      return Colors.grey;
    }),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: CustomColors.primaryColor),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: CustomColors.primaryColor, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    floatingLabelStyle: const TextStyle(
      color: CustomColors.primaryColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  );
}
