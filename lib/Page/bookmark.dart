import 'package:flutter/material.dart';

class bookmark extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text('Tandai Tempat',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Play-Regular.ttf'
          ),),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              Center(
                child: Text('Belum Ada Tempat Ditandai',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                ),),
              ),
              Center(
                child: Text('Jelajahi Tempat yang anda sukai',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}