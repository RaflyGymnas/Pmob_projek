import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:projek_pmob/NavBar.dart';
import 'package:projek_pmob/Page/Lokasi.dart';

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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Bg SigIn.jpg"),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 500, left: 20, right: 20),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                        hintText: "chris@email.com",
                        hintStyle: TextStyle(
                            color: Colors.orange,
                            fontFamily: "Montserrat",
                            fontSize: 15),
                        contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                        suffixIcon: Icon(
                          Icons.person_2_rounded,
                          color: Colors.orange,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.purple,
                            fontFamily: "Montserrat",
                            fontSize: 15),
                        contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                        suffixIcon: Icon(
                          Icons.key_rounded,
                          color: Colors.purple,
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
                        "Forgot Password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.purple,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lokasi()));
                          },
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.orange),
                            ),
                            child: const Center(
                              child: Text("Sign Up",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavBar()));
                          },
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange,
                            ),
                            child: const Center(
                              child: Text("Log In",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
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