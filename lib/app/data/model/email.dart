import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart' as gmail;
import 'package:sender_mail/app/data/common/config_smtp.dart';

class Email {
  final smtpServer =
      gmail.gmailRelaySaslXoauth2(ConfigSmtp.LOGIN_EMAIL, ConfigSmtp.PASSWORD);

  Future<bool> sendMessage({
    required String message,
    required String addressee,
    required String subject,
  }) async {
    final messages = Message()
      ..from = Address(ConfigSmtp.LOGIN_EMAIL, 'Nome do remetente fica aqui')
      ..recipients.add(addressee)
      ..subject = subject
      ..text = message;

    try {
      final sendReport = await send(messages, smtpServer);
      print('Menssagem enviada: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Menssagem não enviada!');
      for (var messageError in e.problems) {
        print('Problema: ${messageError.code} : ${messageError.msg}');
      }
    }
    return false;
  }
}
