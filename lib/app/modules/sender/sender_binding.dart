import 'package:get/get.dart';
import 'package:sender_mail/app/modules/sender/sender_controller.dart';

class SenderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SenderController>(() => SenderController());
  }
}
