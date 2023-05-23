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
            child: Image.network(this.Gambar, 
            fit: BoxFit.cover,)
          )
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 110, 10),
          child: Text(this.Judul,
          style: TextStyle(fontFamily: 'Helvetica', 
          fontSize: 25, 
          fontWeight: FontWeight.w700,
          height: 1.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Row(
            children: [
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Text(this.Deskripsi,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Helvetica'),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: () {},
                  child: Text(this.Ulasan,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Helvetica'),),
                ),
              )
            ],
          ),
        )
        
      ]),
    );
  }
}