import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_calc/constants.dart';

class ROEPage extends StatefulWidget {
  @override
  _ROEPageState createState() => _ROEPageState();
}

class _ROEPageState extends State<ROEPage> {
  TextEditingController netProfitController = TextEditingController();
  TextEditingController equityController = TextEditingController();

  var displayResult = '';

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
              controller: netProfitController,
              decoration: InputDecoration(
                labelText: 'Net Profit / Pendapatan Bersih Setelah Pajak',
                labelStyle: TextStyle(
                    color: Colors.blueAccent.shade700, fontSize: 25.0),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onChanged: (netProfit) {},
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: TextField(
              keyboardType: TextInputType.number,
              controller: equityController,
              decoration: InputDecoration(
                labelText: 'Equity',
                labelStyle: TextStyle(
                    color: Colors.blueAccent.shade700, fontSize: 25.0),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onChanged: (equity) {},
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      this.displayResult = _calculateROE();
                    });
                  },
                  padding: EdgeInsets.all(30.0),
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(width: 40.0,),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _reset();
                    });
                  },
                  padding: EdgeInsets.all(30.0),
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 25.0,),
          Container(
            child: Text(
              this.displayResult,
              style: kHomeLabel,
            ),
          ),
        ],
      ),
    );
  }

  String _calculateROE() {
    double netProfit = double.parse(netProfitController.text);
    double equity = double.parse(equityController.text);

    double resultROE = netProfit / equity;

    String result = 'Return of Equity is $resultROE';

    return result;
  }

  void _reset() {
    netProfitController.text = '';
    equityController.text = '';
    displayResult = '';
  }
}