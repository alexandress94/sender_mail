import 'package:flutter/material.dart';
import 'package:sender_mail/app/theme/app_color_theme.dart';
import 'package:sender_mail/app/theme/app_text_theme.dart';

class AppTheme {
  final ThemeData appThemeData = ThemeData.light().copyWith(
    scaffoldBackgroundColor: appBackgroundColorLight,
    brightness: Brightness.light,
    primaryColor: appPrimeryColor,
    textTheme: AppTextTheme().appTextThemeLight,
    iconTheme: IconThemeData(
      color: appPrimeryColor,
    ),
  );
}
