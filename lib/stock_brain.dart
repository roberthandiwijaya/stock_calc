import 'package:flutter/material.dart';

class TopTextField extends StatelessWidget {
  // const TopTextField({
  //   Key key,
  //   @required this.netRevenueController,
  // }) : super(key: key);

  TopTextField({@required this.netRevenueController});

  final TextEditingController netRevenueController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
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
        },
      ),
    );
  }
}
