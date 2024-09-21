// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown List'),
        backgroundColor: Colors.blue.shade500,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: DropdownButton(
            value: selectedvalue,
            isExpanded: true,
            borderRadius: BorderRadius.circular(10),
            dropdownColor: Colors.blue.shade500,
            icon: Icon(Icons.arrow_drop_down_circle),
            items: <String>['Orange','Apple','Banana','Mango','Pineapple']
            .map<DropdownMenuItem<String>>(
              (value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }
            ).toList(),
            onChanged: (String? newvalue){
              setState(() {
                selectedvalue = newvalue!;
              });
            },
          ),
        ),
      ),
    );
  }
}