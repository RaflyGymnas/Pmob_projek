import 'package:flutter/material.dart';

class artikel with ChangeNotifier{
  String gambar;
  String Judul;
  String lokasi;
  String Deskripsi;
  String Ulasan;

  artikel(this.gambar, this.Deskripsi, this.Judul, this.Ulasan, this.lokasi);
}