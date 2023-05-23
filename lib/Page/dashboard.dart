import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:projek_pmob/provider/articles.dart';
import 'package:projek_pmob/widget/HomeArticle.dart';
import 'package:projek_pmob/widget/article.dart';
import 'package:projek_pmob/Page/bookmark.dart';
import 'package:provider/provider.dart';

class dashboardpage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final item = Provider.of<articles>(context);
    final itemdata = item.allArtikel;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            toolbarHeight: 75,
            actions: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: CircleAvatar(),
              ),
            ],
            title: Padding(
                padding: const EdgeInsets.fromLTRB(172, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Text("Halo, User!!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "Helvetica",
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              children: [
                Flexible(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 150, 0),
                        child: Text(
                          'Apa Kabar?',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
                          child: TextField(
                            showCursor: true,
                            enableInteractiveSelection: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Colors.grey,
                              hintText: 'Berbagi Pengalamanmu',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 5, 250, 0),
                        child: Text(
                          'Kategori',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 5, 50, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 255, 230, 230)),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'image/pantai.jpg'),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  'Pantai',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'asset/Helvetica.ttf',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'image/gunung.jpg'),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  'Gunung',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'asset/Helvetica.ttf',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'image/kuliner.jpg'),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  'Kuliner',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'asset/Helvetica.ttf',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'image/religi.jpg'),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  'Religi',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'asset/Helvetica.ttf',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'image/Budaya.jpg'),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  'Budaya',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'asset/Helvetica.ttf',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'image/agrowisata.jpg'),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  'Agrowisata',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'asset/Helvetica.ttf',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: const [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'image/edukasi.jpg'),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.0),
                                                child: Text(
                                                  'Edukasi',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'asset/Helvetica.ttf',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: const [
                                            CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'image/air terjun.jpeg')),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 8.0),
                                              child: Text(
                                                'Air terjun',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        'asset/Helvetica.ttf',
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 20, 200, 0),
                        child: Text(
                          'Artikel Wisata',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: itemdata.length,
                          itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(value: itemdata[counter],
                          child: HomeArticle(),))
                      ),
                      Column(
                        children: [
                           Padding(
                             padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                             child: Row(
                                children: [
                                  Information('Informasi Umum'),
                                  Information('Kartu Kredit')
                                  ],
                              ),
                           ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                              child: Row(
                                children: [
                                  Information('Nomor Darurat'),
                                  Information('Kedutaan')
                                ],
                              ),
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Information extends StatelessWidget {
  final String Nama;
  
  Information(this.Nama);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 150,
        height: 120,
        child: SizedBox(
            width: 150,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image(
                    width: 200,
                    height: 160,
                    fit: BoxFit.cover,
                    image: NetworkImage("https://picsum.photos/280/130"),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        Nama,
                        style: TextStyle(
                            fontFamily: 'Play.ttf', 
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
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


