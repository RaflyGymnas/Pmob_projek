import 'package:flutter/material.dart';
import 'package:projek_pmob/model/artikel.dart';

class articles with ChangeNotifier{
  List<artikel> _allArtikel = [
    artikel("image/Kampung-Cokelat.jpg", "Kampung Roti adalah kampung yang berisi warga yang senang membuat roti", "Kampung coklat", "Ulasan", "Sumatra barat",1),
    artikel("image/edukasi.jpg", "Deskripsi", "Kampung warna-warni", "Ulasan", "Malang",2),
  ];
  List<artikel> get allArtikel {
      return [..._allArtikel];
}
}