import 'package:flutter/material.dart';
import 'package:stock_calc/hitung_gpm.dart';
import 'halaman_utama.dart';
import 'hitung_gpm.dart';

void main() {
  runApp(StockCalc());
}

class StockCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      initialRoute: '/',
      routes: {
        '/': (context) => HalamanUtama(),
        '/hitung_gpm': (context) => GPMPage(),
      },
    );
  }
}
