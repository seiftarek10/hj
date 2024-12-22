import 'package:flutter/material.dart';
import 'package:threadly/Core/Style/Colors/colors_dark.dart';
import 'package:threadly/Core/Style/Colors/colors_light.dart';
import 'package:threadly/Core/Style/Theme/colors_theme_extension.dart';

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: DarkColors.mainColor,
    extensions: const <ThemeExtension<dynamic>>[AppColors.darkColors],
  );
}

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: LightColors.mainColor,
    extensions: const <ThemeExtension<dynamic>>[AppColors.lightColors],
  );
}
