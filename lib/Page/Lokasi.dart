import 'package:flutter/material.dart';
import 'package:projek_pmob/Page/tempat.dart';
import 'package:projek_pmob/widget/article.dart';

class lokasi extends StatelessWidget {
  const lokasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                floating: true,
                pinned: true,
                snap: false,
                centerTitle: false,
                title: const Text(
                  'Lokasi',
                  style: TextStyle(fontFamily: "Play.ttf", color: Colors.black),
                ),
                bottom: AppBar(
                  elevation: 0,
                  toolbarHeight: 80,
                  backgroundColor: Colors.white,
                  title: Center(
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search for something',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                  ),
                ),
              ),
              // Other Sliver Widgets
              SliverList(
                delegate: SliverChildListDelegate([
                  SafeArea(
                    top: false,
                    child: DefaultTabController(
                      length: 6,
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            color: Colors.white,
                            padding: EdgeInsets.only(
                                left: 10, bottom: 20, right: 10),
                            child: TabBar(
                              isScrollable: true,
                              unselectedLabelColor: Colors.black,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black,
                              ),
                              tabs: [
                                Tab(
                                  child: Container(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Semua')),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Edukasi')),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Pantai')),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Gunung')),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Kuliner')),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Religi')),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            //child: Container(
                            height: 2300,
                            //color: Colors.blue,
                            child: TabBarView(
                              children: [
                                Column(
                                  children: [
                                   InkWell(
                                    onTap: (){
                                      Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SumateraBarat()));
                                    },
                                     child: Padding(
                                         padding: const EdgeInsets.symmetric(vertical: 8),
                                         child: Container(
                                           width: 350,
                                           height: 130,
                                           child: SizedBox(
                                               width: 150,
                                               height: 120,
                                               child: ClipRRect(
                                                 borderRadius: BorderRadius.circular(10),
                                                 child: Stack(
                                                   children: [
                                                     Image(
                                                       width: 350,
                                                       height: 180,
                                                       fit: BoxFit.cover,
                                                       image: NetworkImage("https://picsum.photos/280/130"),
                                                     ),
                                                     Container(
                                                       alignment: Alignment.centerLeft,
                                                       child: Padding(
                                                         padding: const EdgeInsets.only(left: 20),
                                                         child: Text(
                                                           'Sumatra Barat',
                                                           style: TextStyle(
                                                               fontFamily: 'Play.ttf', 
                                                               fontWeight: FontWeight.w900,
                                                               color: Colors.white,
                                                               fontSize: 26
                                                         ),
                                                       ),
                                                     )),
                                                   ],
                                                 ),
                                               )),
                                         ),
                                       ),
                                   ),
    InkWell(
    onTap: (){
      Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Malang()));
    },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          width: 350,
          height: 130,
          child: SizedBox(
              width: 150,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Image(
                      width: 350,
                      height: 180,
                      fit: BoxFit.cover,
                      image: NetworkImage("https://picsum.photos/280/130"),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Malang',
                          style: TextStyle(
                              fontFamily: 'Play.ttf', 
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 26
                        ),
                      ),
                    )),
                  ],
                ),
              )),
        ),
      ),
    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                    Tempat('Aceh'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //),
                          //Container(),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}

class Tempat extends StatelessWidget {
   final String Nama;
  
  Tempat(this.Nama);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: 350,
        height: 130,
        child: SizedBox(
            width: 150,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image(
                    width: 350,
                    height: 180,
                    fit: BoxFit.cover,
                    image: NetworkImage("https://picsum.photos/280/130"),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        Nama,
                        style: TextStyle(
                            fontFamily: 'Play.ttf', 
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 26
                      ),
                    ),
                  )),
                ],
              ),
            )),
      ),
    );
  }
}

