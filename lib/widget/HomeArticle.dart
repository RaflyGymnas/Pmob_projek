import 'package:flutter/material.dart';
import 'package:projek_pmob/widget/article.dart';
import 'package:provider/provider.dart';

import '../model/artikel.dart';

class HomeArticle extends StatelessWidget {
  const HomeArticle({super.key});

  @override
  Widget build(BuildContext context) {
    final item = Provider.of<artikel>(context);
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Article(item.Judul,item.gambar, item.Deskripsi, item.Ulasan)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          width: 280,
          height: 200,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: NetworkImage(item.gambar),
                  width: 280,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
               Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: SizedBox(
                  width: 280,
                  child: Text(item.Judul,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Helvetica")),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                    child: Text("• 2.5Rb Ulasan",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Helvetica")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}