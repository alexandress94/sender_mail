import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sender_mail/app/modules/sender/sender_controller.dart';

class SenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SenderController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Text('${controller.getStatus}'),
          ),
          floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.send_outlined),
            onPressed: () {
              controller.sendEmail();
            },
            label: Text('Enviar'),
          ),
        );
      },
    );
  }
}
