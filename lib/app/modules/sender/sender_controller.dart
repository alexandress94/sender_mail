import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sender_mail/app/data/model/email.dart';
import 'package:sender_mail/app/theme/app_text_theme.dart';

class SenderController extends GetxController {
  String _status = '';
  final email = new Email();

  void sendEmail() async {
    bool result = await email.sendMessage(
      message: "Menssagem para o destinatário",
      addressee: "email do destinatário",
      subject: "Assunto do e-mail",
    );
    // Verificando o resultado
    _status = result ? 'Enviado' : 'Não enviado';

    Get.snackbar(
      'Status',
      _status,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.only(bottom: appDefultPadding),
    );
    update();
  }

  // Obtem o resultado do status
  get getStatus => _status;
}
