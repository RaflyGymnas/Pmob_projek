import 'package:flutter/material.dart';
import 'package:projek_pmob/Page/Profile.dart';
import 'package:projek_pmob/Page/dashboard.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:projek_pmob/Page/login_page.dart';
import 'package:projek_pmob/Page/onboarding.dart';
import 'package:projek_pmob/components/already_have_an_account_acheck.dart';
import 'NavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travelars',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OnBoardingScreen());
  }
}
