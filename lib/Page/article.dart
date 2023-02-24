import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  const Article({super.key});

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
            child: Image.network("https://picsum.photos/280/130", 
            fit: BoxFit.cover,)
          )
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 150, 10),
          child: Text("Nama desa bla bla",
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
                  child: Text('Deskripsi',
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
                  child: Text('Ulasan',
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