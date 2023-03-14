import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/Bg SigIn.jpg'),
                  fit: BoxFit.cover)
              ),
            ),
            Center(
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}