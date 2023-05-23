import 'package:flutter/material.dart';
import 'package:projek_pmob/model/artikel.dart';

class articles with ChangeNotifier{
  List<artikel> _allArtikel = [
    artikel("https://picsum.photos/seed/picsum/200/300", "Deskripsi yagesya", "Kampung roti", "Ini bagian ulasan", "Sumatra barat"),
    artikel("https://picsum.photos/seed/picsum/200/300", "Deskripsi yagesya2", "Kampung warna-warni", "Ini bagian ulasan2", "Malang"),
  ];
  List<artikel> get allArtikel {
      return [..._allArtikel];
}
}