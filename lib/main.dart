import 'package:flutter/material.dart';
import 'halaman_utama.dart';

void main() {
  runApp(StockCalc());
}

class StockCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HalamanUtama(),
    );
  }
}
