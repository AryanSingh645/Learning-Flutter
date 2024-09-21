// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Center(
                        child: Icon(
                          Icons.horizontal_rule,
                          size: 64.0,
                          )),
                    ),
                    ListTile(
                      title: Text('Aryan'),
                      subtitle: Text('Flutter Developer'),
                      leading: Icon(Icons.person),
                    ),
                    ListTile(
                      title: Text('Kaushal'),
                      subtitle: Text('Web Developer'),
                      leading: Icon(Icons.person),
                    ),
                    ListTile(
                      title: Text('Arsh'),
                      subtitle: Text('Video Editor'),
                      leading: Icon(Icons.person),
                    ),
                    ListTile(
                      title: Text('Sihag'),
                      subtitle: Text('Graphic Designer'),
                      leading: Icon(Icons.person),
                    ),
                  ],
                );
              }
              );
          },
          child: Text('Show BottomSheet'),
        ),
      ),
    );
  }
}