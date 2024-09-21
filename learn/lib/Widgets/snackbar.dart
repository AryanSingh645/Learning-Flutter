// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types


import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Snackbar'),
      //   backgroundColor: Colors.deepPurple,
      // ),
      body: 
      Center(
        child: ElevatedButton(
          child: Text('Show me'),
          onPressed: () {
            final snacky = SnackBar(
              action: SnackBarAction(label: 'Okay',onPressed: (){},),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              behavior: SnackBarBehavior.floating,
              content: Center(child: Text(
                'This is a snackbar',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
                )),
              backgroundColor: Colors.pink[300],
              duration: Duration(seconds: 2),
            );
            ScaffoldMessenger.of(context).showSnackBar(snacky);
          },
        ),
      ),
    );
  }
}