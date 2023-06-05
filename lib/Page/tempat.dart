import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projek_pmob/provider/articles.dart';
import 'package:projek_pmob/widget/HomeArticle.dart';
import 'package:provider/provider.dart';

class SumateraBarat extends StatelessWidget {
  const SumateraBarat({super.key});

  @override
  Widget build(BuildContext context) {
    final DataLokasi = Provider.of<articles>(context).allArtikel;
    final Lokasi = DataLokasi.where((articles) => articles.Provinsi == 1).toList();
    return Scaffold(
      body: ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) => ChangeNotifierProvider.value(
                  value: Lokasi[index],
                  child:  HomeArticle()),
              itemCount: Lokasi.length,
            ),
    );
  }
}
class Malang extends StatelessWidget {
  const Malang({super.key});

  @override
  Widget build(BuildContext context) {
    final DataLokasi = Provider.of<articles>(context).allArtikel;
    final Lokasi = DataLokasi.where((articles) => articles.Provinsi == 2).toList();
    return Scaffold(
      body: ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) => ChangeNotifierProvider.value(
                  value: Lokasi[index],
                  child:  HomeArticle()),
              itemCount: Lokasi.length,
            ),
    );
  }
}