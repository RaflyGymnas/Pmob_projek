import 'package:flutter/material.dart';

class artikel with ChangeNotifier{
  String gambar;
  String Judul;
  String lokasi;
  String Deskripsi;
  String Ulasan;
  int Provinsi;


  artikel(this.gambar, this.Deskripsi, this.Judul, this.Ulasan, this.lokasi, this.Provinsi);
}