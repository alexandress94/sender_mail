import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sender_mail/app/data/model/email.dart';
import 'package:sender_mail/app/theme/app_text_theme.dart';

class SenderController extends GetxController {
  String _status = '';
  final email = new Email();

  void sendEmail() async {
    await email.sendMessage(
      message: "Menssagem para o destinatário ",
      addressee: "/*E-mail do destinatário fica aqui*/",
      subject: "Assunto do e-mail",
    );
    // Verificando o resultado
    _status = email.isSend ? 'Enviado' : 'Não enviado';

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
