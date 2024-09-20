import 'package:debaghy/app/config/color_manager.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static final ThemeData appTheme = ThemeData(
    primaryColor: ColorManager.firstColor,
    focusColor: ColorManager.firstColor,
    hoverColor: ColorManager.firstColor,
  );
}
