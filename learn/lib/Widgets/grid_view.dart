// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class gridWidget extends StatefulWidget {
  const gridWidget({super.key});

  @override
  State<gridWidget> createState() => _gridWidgetState();
}

class _gridWidgetState extends State<gridWidget> {

  Map fruit_person = {
    'fruits' : ['Orange','Apple','Mango','Banana'],
    'names' : ['Aryan','Tyson','Rupam','Tony']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Grid View Widget'),
      ),
      body: 
      // GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     childAspectRatio: 2/3
      //   ),
      //   children: [
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //     Card(
      //       child: Center(child: Text('Orange')),
      //     ),
      //   ],
      // ),
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Center(
              child: ListTile(
                title: Text(fruit_person['fruits'][index]),
                subtitle: Text(fruit_person['names'][index]),
              ),
            ),
          );
        },
      ),
    );
  }
}