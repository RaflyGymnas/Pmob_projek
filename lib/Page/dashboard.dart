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
          toolbarHeight: 80,
        
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
            child: Text('Apa Kabar?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
              child: TextField(
                showCursor: true,
                enableInteractiveSelection: true,
                decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40 )),
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.grey,
                      hintText: 'Berbagi Pengalamanmu',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 250, 0),
            child: Text('Kategori',textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 25, 50, 0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white
                      ), 
                      child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('image/pantai.jpg'),),
                          Text('Pantai', style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'asset/Helvetica.ttf',
                            color: Colors.black
                          ),)
                        ],
                      )
                      ),
                      ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white), 
                      child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('image/gunung.jpg'),),
                          Text('Gunung', style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'asset/Helvetica.ttf',
                            color: Colors.black
                          ),)
                        ],
                      )
                      ),
                      ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white), 
                      child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('image/kuliner.jpg'),),
                          Text('Kuliner', style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'asset/Helvetica.ttf',
                            color: Colors.black
                          ),)
                        ],
                      )
                      ),
                      ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white), 
                      child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('image/religi.jpg'),),
                          Text('Religi', style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'asset/Helvetica.ttf',
                            color: Colors.black
                          ),)
                        ],
                      )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                      ), 
                      child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('image/Budaya.jpg'),),
                          Text('Budaya', style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'asset/Helvetica.ttf',
                            color: Colors.black
                          ),)
                        ],
                      )
                ),
                      ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white
                ), 
                child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('image/agrowisata.jpg')),
                          Text('Agrowisata', style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'asset/Helvetica.ttf',
                            color: Colors.black
                          ),)
                        ],
                      )
                      ),
                      ElevatedButton(
                        onPressed: () {},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ), 
                      child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('image/edukasi.jpg')),
                          Text('Edukasi', style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'asset/Helvetica.ttf',
                            color: Colors.black
                          ),)
                        ],
                      )
                ),
                      ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white
                ), 
                child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('image/air terjun.jpeg')),
                          Text('Air terjun', style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'asset/Helvetica.ttf',
                            color: Colors.black
                          ),)
                        ],
                      )
                ),
              ],
            ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 200, 0),
            child: Text('Tempat Wisata',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400
            ),
            ),
          ),

        ],
      ),
      )
    );
  }
}
