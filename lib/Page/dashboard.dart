import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';


void main() {
  runApp(dashboardpage());
}

class dashboardpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 100,
        
          actions: [
            ElevatedButton(onPressed: (){
              
            },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white
            ), 
            child: 
            CircleAvatar(),
            ),
            
          ],
          title: Padding(padding: 
          const EdgeInsets.fromLTRB(172, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left:0),
                      child: Text("Halo, User!!",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              //fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700)),
                    ),
            ],
          ),
            ],
          )
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 0, 200, 0),
            child: Text('Apa Kabar',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700
            ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 25, 40, 10),
              child: TextField(
                enableInteractiveSelection: true,
              ),
            ),
          ),
        ],
      ),
      )
    );
  }
}
