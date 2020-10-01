import 'package:flutter/material.dart';
import 'halaman_utama.dart';

void main() {
  runApp(StockCalc());
}

class StockCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)
      ),
        home: HalamanUtama(),
    );
  }
}
