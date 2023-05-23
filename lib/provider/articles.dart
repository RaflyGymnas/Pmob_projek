import 'package:flutter/material.dart';
import 'package:projek_pmob/model/artikel.dart';

class articles with ChangeNotifier{
  List<artikel> _allArtikel = [
    artikel("https://picsum.photos/seed/picsum/200/300", "Deskripsi", "Kampung roti", "Ulasan", "Sumatra barat"),
    artikel("https://picsum.photos/seed/picsum/200/300", "Deskripsi", "Kampung warna-warni", "Ulasan", "Malang"),
  ];
  List<artikel> get allArtikel {
      return [..._allArtikel];
}
}