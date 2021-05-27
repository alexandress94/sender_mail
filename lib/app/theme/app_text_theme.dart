import 'package:flutter/material.dart';
import 'package:sender_mail/app/theme/app_color_theme.dart';

class AppTextTheme {
  final TextTheme appTextThemeLight = TextTheme(
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: appPrimeryColor,
    ),
  );
}

const double appDefultPadding = 16.0;
