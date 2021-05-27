import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sender_mail/app/routes/app_pages.dart';
import 'package:sender_mail/app/routes/routes.dart';
import 'package:sender_mail/app/theme/app_theme.dart';

void main() async {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().appThemeData,
      getPages: AppPages.routes,
      initialRoute: Routes.SENDER_PAGE,
    ),
  );
}
