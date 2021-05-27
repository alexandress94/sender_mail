import 'package:get/get.dart';
import 'package:sender_mail/app/modules/sender/sender_binding.dart';
import 'package:sender_mail/app/modules/sender/sender_page.dart';
import 'package:sender_mail/app/routes/routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SENDER_PAGE,
      page: () => SenderPage(),
      binding: SenderBinding(),
    )
  ];
}
