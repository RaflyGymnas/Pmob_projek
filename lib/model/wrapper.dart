import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projek_pmob/Page/dashboard.dart';
import 'package:projek_pmob/Page/login_page.dart';
import 'package:projek_pmob/Page/onboarding.dart';
import 'package:projek_pmob/model/user.dart';
import 'package:provider/provider.dart';
import '../provider/auth.dart';

class wrapper extends StatelessWidget {
  const wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authservice = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authservice.user,
      builder: (_, AsyncSnapshot<User?> snapshot){
        if (snapshot.connectionState == ConnectionState.active){
          final User? user = snapshot.data;
          return user == null? Login_page() : OnBoardingScreen();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      });
  }
}