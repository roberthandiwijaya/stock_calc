import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_calc/constants.dart';
import 'stock_brain.dart';

class GPMPage extends StatefulWidget {
  @override
  _GPMPageState createState() => _GPMPageState();
}

class _GPMPageState extends State<GPMPage> {
  TextEditingController netRevenueController = TextEditingController();
  TextEditingController costOfRevenueController = TextEditingController();

  var displayResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Calculator'),
      ),
      body: Column(
        children: <Widget>[
          TopTextField(netRevenueController: netRevenueController),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: TextField(
              keyboardType: TextInputType.number,
              controller: costOfRevenueController,
              decoration: InputDecoration(
                labelText: 'Cost of Revenue / HPP',
                labelStyle: TextStyle(
                    color: Colors.blueAccent.shade700, fontSize: 25.0),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onChanged: (costOfRevenue) {
              },
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
                      this.displayResult = _calculateGPM();
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

  String _calculateGPM() {
    double netRevenue = double.parse(netRevenueController.text);
    double costOfRevenue = double.parse(costOfRevenueController.text);

    double resultGPM = (netRevenue - costOfRevenue) / netRevenue;

    String result = 'Gross Profit Margin is $resultGPM';

    return result;
  }

  void _reset(){
    netRevenueController.text = '';
    costOfRevenueController.text = '';
    displayResult = '';
  }
}

