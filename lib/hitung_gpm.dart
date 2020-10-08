import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_calc/constants.dart';

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
          Container(
            child: TextField(
              keyboardType: TextInputType.number,
              controller: netRevenueController,
              decoration: InputDecoration(
                labelText: 'Net Revenue / Pendapatan Bersih',
                labelStyle: TextStyle(
                    color: Colors.blueAccent.shade700, fontSize: 25.0),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onChanged: (netRevenue) {
                print('First Text Field: $netRevenue');
                print(netRevenue);
              },
            ),
          ),
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
                print('Second Text Field: $costOfRevenue');
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                this.displayResult = _calculateGPM();
              });
            },
            padding: EdgeInsets.all(20.0),
            textColor: Colors.white,
            color: Colors.blue,
            child: Text(
              'Calculate',
              style: TextStyle(fontSize: 20),
            ),
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

    String result = 'GPM is $resultGPM';

    return result;
  }
}
