import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Calculator'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                color: Color(0xFF1D1E33),
                child: Text(
                  'Test',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
