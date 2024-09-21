// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class DissmissibleWidget extends StatefulWidget {
  const DissmissibleWidget({super.key});

  @override
  State<DissmissibleWidget> createState() => _DissmissibleWidgetState();
}

class _DissmissibleWidgetState extends State<DissmissibleWidget> {

  List<String> fruit_list = ['Orange','Apple','Banana','Guava','Pineapple','Mango'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Dissmissible Widget'),
      //   backgroundColor: Colors.deepPurple,
      // ),
      body: ListView.builder(
        itemCount: fruit_list.length,
        itemBuilder: (BuildContext context, int index) {
          final fruit = fruit_list[index];
          return Dismissible(
            onDismissed: (direction){
              if(direction == DismissDirection.startToEnd){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruit_list[index]),
                  backgroundColor: Colors.red,
                  ));
              } else if(direction == DismissDirection.endToStart){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruit_list[index]),
                  backgroundColor: Colors.green,
                ));
              }
            },
            key: Key(fruit),
            background: Container(
              color: Colors.red,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0,5.0,5.0,5.0),
                    child: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            secondaryBackground: Container(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0,5.0,15.0,5.0),
                    child: Icon(Icons.archive),
                  ),
                ],
              ),
            ),
            child: Card(
              child: ListTile(
                title: Text(fruit_list[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}