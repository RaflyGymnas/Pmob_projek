import 'package:flutter/material.dart';

class SyaratnKetentuan extends StatelessWidget {
  const SyaratnKetentuan ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Syarat dan Ketentuan'),
        ),
        body: Center(
          child: Text('hola'),
        ),
      ),
    );
  }
}