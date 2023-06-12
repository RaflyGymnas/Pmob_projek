import 'package:flutter/material.dart';
import 'package:projek_pmob/model/artikel.dart';
import 'package:projek_pmob/provider/articles.dart';
import 'package:provider/provider.dart';

class Article extends StatelessWidget {
   final String Judul;
  final String Gambar;
  final String Deskripsi;
  final String Ulasan;
  Article(this.Judul,this.Gambar, this.Deskripsi, this.Ulasan);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(children: [
        SizedBox(
          height: 300,
          width: 480,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(Gambar, 
            fit: BoxFit.cover,)
          )
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18, 10, 220, 10),
          child: Text(this.Judul,
          style: TextStyle(fontFamily: 'Helvetica', 
          fontSize: 25, 
          fontWeight: FontWeight.w700,
          height: 1.5),
          ),
        ),
        Column(
          children: [
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, right: 290),
                    child: Text('Deskripsi',
                    style: TextStyle(fontFamily: 'Helvetica',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(21, 5, 10, 10),
                    child: Text(Deskripsi,
                    style: TextStyle(fontFamily: 'Helvetica',
                    fontSize: 15,
                    ),),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  child:Padding(
                    padding: const EdgeInsets.only(left: 17, right: 310),
                    child: Text('Ulasan',
                    style: TextStyle(fontFamily: 'Helvetica',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                    ),
                  ),
                ),
              ],
            )
          ],
        ) 
      ]),
    );
  }
}