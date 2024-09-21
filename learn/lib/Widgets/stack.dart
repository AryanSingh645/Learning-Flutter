// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade500,
        title: Text('Stack Widget'),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/profile.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              color: Colors.green.shade700,
              height: 100,
              width: 100,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.green.shade400,
              height: 100,
              width: 100,
            ),
          )
          ]
        ),
    );
  }
}