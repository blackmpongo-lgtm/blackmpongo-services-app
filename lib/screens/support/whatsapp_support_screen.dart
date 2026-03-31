import 'package:flutter/material.dart';

class WhatsAppSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Support'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _launchWhatsApp();
          },
          child: Text('Contact Support via WhatsApp'),
        ),
      ),
    );
  }

  void _launchWhatsApp() async {
    final url = 'https://wa.me/c/27647963829';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: WhatsAppSupportScreen(),
  ));
}