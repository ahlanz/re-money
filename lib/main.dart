import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:re_money/home/main_home.dart';
import 'package:re_money/home/transaksi_home_page.dart';
import 'package:re_money/screen/bahasa_page.dart';
import 'package:re_money/screen/profile_page.dart';
import 'package:re_money/screen/tambah_dompet_page.dart';

void main() async {
   await initializeDateFormatting('id_ID', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeMain(),
        '/tambah-transaksi' : (context) => TransaksiPage(),
        '/tambah-dompet' : (context) => TambahDompet(),
        '/bahasa' : (context) => BahasaPage(),
        '/profile' : (context) => ProfilePage(),
      },
    );
  }
}
