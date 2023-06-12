import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:projek_pmob/NavBar.dart';
import 'package:projek_pmob/Page/Lokasi.dart';
import 'package:projek_pmob/Page/SignIn.dart';
import 'package:provider/provider.dart';

import '../provider/auth.dart';

class Login_page extends StatelessWidget {
  Login_page({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 750,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/BgLogin.png"),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 240, left: 20, right: 20),
                    child: TextField(
                      controller: emailController,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontFamily: 'Helvetica',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Nama Pengguna",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Helvetica",
                            fontSize: 14),
                        contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 17),
                        suffixIcon: Icon(
                          Icons.person_outline_outlined,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Helvetica',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        hintText: "Kata sandi",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Helvetica",
                            fontSize: 14),
                        contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 17),
                        suffixIcon: Icon(
                          Icons.key_rounded,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: SizedBox(
                      width: 330,
                      child: Text(
                        "Lupa Kata sandi?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Helvetica",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () async { 
                            await authService.signInWithEmailAndPassword(emailController.text, passwordController.text);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavBar()));
                          },
                          child: Container(
                            height: 50,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue,
                            ),
                            child: const Center(
                              child: Text("Masuk",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Helvetica",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                            ),
                          ),
                        ),
                        // Divider(
                        //   color: Colors.amber,
                        //   indent: 100,
                        //   endIndent: 10,
                        // )
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Belum ada akun?'),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()));
                                },
                                child: Container(
                                  child: Text("Buat Akun",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: "Helvetica",
                                      )),
                                ),
                              ),
                              
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
