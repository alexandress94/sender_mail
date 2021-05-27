import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sender_mail/app/modules/sender/sender_controller.dart';
import 'package:sender_mail/app/theme/app_text_theme.dart';

class SenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final _senderController = Get.find<SenderController>();
    return Scaffold(
      body: Center(
        child: GetBuilder<SenderController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.getStatus),
                SizedBox(
                  height: appDefultPadding,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    controller.sendEmail();
                  },
                  icon: Icon(Icons.send_outlined),
                  label: Text('Enviar'),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
