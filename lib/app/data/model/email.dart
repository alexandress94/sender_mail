import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart' as gmail;
import 'package:sender_mail/app/data/common/config_smtp.dart';

class Email {
  late bool _isSend;
  get isSend => _isSend;

  // ignore: deprecated_member_use
  final smtpServer = gmail.gmail(
    ConfigSmtp.LOGIN_EMAIL,
    ConfigSmtp.PASSWORD,
  );

  Future<bool> sendMessage({
    required String message,
    required String addressee,
    required String subject,
  }) async {
    final messages = Message()
      ..from = Address(
        ConfigSmtp.LOGIN_EMAIL,
        'Assunto do e-mail',
      )
      ..recipients.add(addressee)
      ..subject = subject
      ..text = message;

    try {
      final sendReport = await send(messages, smtpServer);
      _isSend = true;
      print('Menssagem enviada: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Menssagem não enviada!');
      _isSend = false;
      for (var messageError in e.problems) {
        print('Problema: ${messageError.code} : ${messageError.msg}');
      }
    }
    return false;
  }
}
