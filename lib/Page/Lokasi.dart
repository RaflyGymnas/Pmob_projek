import 'package:flutter/material.dart';

class lokasi extends StatelessWidget {
  const lokasi({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        title: Text('Lokasi',
        style: TextStyle(
          fontFamily: 'Play-Regular.ttf',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black
        ),),
        ),
        body: Center(
          child: Text('Hola'),
        ),
      ),
    );
  }
}