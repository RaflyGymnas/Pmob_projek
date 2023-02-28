import 'package:flutter/material.dart';
import 'package:projek_pmob/Page/Profile.dart';
import 'package:projek_pmob/Page/dashboard.dart';
import 'package:flutter/src/rendering/box.dart';

import 'NavBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: NavBar()
    );
  }
}