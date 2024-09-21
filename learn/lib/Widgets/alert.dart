// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple,
      //   title: Text('Alert Widget'),
      // ),
      body: Center(
        child: TextButton(
          child: Text('Press Alert'),
          onPressed: (){
            _showAlertWidget(context);
          },
        ),
      ),
    );
  }
}

Future<void>_showAlertWidget(BuildContext context) async{
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        content: SingleChildScrollView(
          child: ListBody(children: [Text('This is a demo'),Text('This is Aryan Singh')]),
        ),
        actions: [
          TextButton(onPressed: (){}, child: Text('Approve')),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
        ]
      );       
    }
  );
}