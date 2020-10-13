import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {

  ReusableTextField({@required this.controller, this.labelTextField, this.onChangedData});

  final TextEditingController controller;
  final String labelTextField;
  final Function onChangedData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelTextField,
          labelStyle: TextStyle(
              color: Colors.blueAccent.shade700, fontSize: 25.0),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onChanged: onChangedData,
      ),
    );
  }
}
