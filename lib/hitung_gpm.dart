import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GPMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Net Revenue / Pendapatan Bersih',
                labelStyle: TextStyle(
                    color: Colors.blueAccent.shade700, fontSize: 25.0),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onChanged: (netRevenue) {
                print('First Text Field: $netRevenue');
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Cost of Revenue / HPP',
                labelStyle: TextStyle(
                    color: Colors.blueAccent.shade700, fontSize: 25.0),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onChanged: (costOfRevenue){
                print('Second Text Field: $costOfRevenue');
              },
            ),
          ),
        ],
      ),
    );
  }
}
