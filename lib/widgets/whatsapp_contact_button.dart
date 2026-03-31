import 'package:flutter/material.dart';

class WhatsappContactButton extends StatelessWidget {
  final String phoneNumber;

  WhatsappContactButton({required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Open WhatsApp Business contact link
        final whatsappUrl = 'https://wa.me/c/$phoneNumber';
        launch(whatsappUrl);
      },
      child: Text('Contact Us on WhatsApp'),
    );
  }
}