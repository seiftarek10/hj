import 'package:flutter/material.dart';
import 'package:threadly/Core/Style/Colors/colors_dark.dart';
import 'package:threadly/Core/Style/Colors/colors_light.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.mainColor,
    required this.bluePinkDark,
    required this.bluePinkLight,
    required this.textColor,
    required this.textFormBorder,
    required this.navBarbg,
    required this.navBarSelectedTab,
    required this.containerShadow1,
    required this.containerShadow2,
    required this.containerLinear1,
    required this.containerLinear2,
  });

  final Color? mainColor;
  final Color? bluePinkDark;
  final Color? bluePinkLight;
  final Color? textColor;
  final Color? textFormBorder;
  final Color? navBarbg;
  final Color? navBarSelectedTab;
  final Color? containerShadow1;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;
  @override
  ThemeExtension<AppColors> copyWith({
    Color? mainColor,
    Color? bluePinkDark,
    Color? bluePinkLight,
    Color? textColor,
    Color? textFormBorder,
    Color? navBarbg,
    Color? navBarSelectedTab,
    Color? containerShadow1,
    Color? containerShadow2,
    Color? containerLinear1,
    Color? containerLinear2,
  }) {
    return AppColors(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  static const AppColors darkColors = AppColors(
    mainColor: DarkColors.mainColor,
    bluePinkDark: DarkColors.blueDark,
    bluePinkLight: DarkColors.blueLight,
    textColor: DarkColors.white,
    textFormBorder: DarkColors.blueLight,
    navBarbg: DarkColors.navBarDark,
    navBarSelectedTab: DarkColors.white,
    containerShadow1: DarkColors.black1,
    containerShadow2: DarkColors.black2,
    containerLinear1: DarkColors.black1,
    containerLinear2: DarkColors.black2,
  );

  static const AppColors lightColors = AppColors(
    mainColor: LightColors.mainColor,
    bluePinkDark: LightColors.pinkDark,
    bluePinkLight: LightColors.pinkLight,
    textColor: LightColors.black,
    textFormBorder: LightColors.pinkLight,
    navBarbg: LightColors.mainColor,
    navBarSelectedTab: LightColors.pinkDark,
    containerShadow1: LightColors.white,
    containerShadow2: LightColors.white,
    containerLinear1: LightColors.pinkDark,
    containerLinear2: LightColors.pinkLight,
  );
}
