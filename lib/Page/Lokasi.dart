import 'package:flutter/material.dart';

class lokasi extends StatelessWidget {
  const lokasi({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lokasi'),
        ),
        body: Center(
          child: Text('mamak'),
        ),
      ),
    );
  }
}