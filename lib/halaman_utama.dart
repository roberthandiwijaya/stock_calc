import 'package:flutter/material.dart';
import 'constants.dart';

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/hitung_gpm');
              },
              child: Container(
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Hitung Gross Profit Margin (GPM)',
                        style: kHomeLabel,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 4.0,
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                print('button 2 touched');
              },
              child: Container(
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Hitung Return Of Equity (ROE)',
                        style: kHomeLabel,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
