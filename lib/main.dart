import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projek_pmob/Page/Profile.dart';
import 'package:projek_pmob/Page/SignIn.dart';
import 'package:projek_pmob/Page/bookmark.dart';
import 'package:projek_pmob/Page/Lokasi.dart';
import 'package:projek_pmob/Page/dashboard.dart';
import 'package:projek_pmob/Page/login_page.dart';
import 'package:projek_pmob/Page/onboarding.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:projek_pmob/provider/articles.dart';
import 'package:projek_pmob/provider/auth.dart';
import 'package:provider/provider.dart';
import 'NavBar.dart';
import 'model/wrapper.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ ChangeNotifierProvider(
      create: (context) => articles(),),ChangeNotifierProvider(
      create: (context) => AuthService(),)],
            child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Travelars',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        initialRoute: '/',
      routes: {
        '/': (context) => wrapper(),
        '/Login': (context) => Login_page(),
        '/Register': (context) => SignUp(),
      },));

    
  }
}
