// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  padding: EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 45.0,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        ),
                        SizedBox(width: 5.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Aryan Singh',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20.0,
                              ),
                              ),
                              SizedBox(height: 8.0),
                            Text(
                              'singhjee30476@gmail.com',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 13.0,
                              ),)
                          ],
                        ),
                        
                    ],
                  ),
                )
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Shared with me'),
              ),
              ListTile(
                leading: Icon(Icons.star_rate),
                title: Text('Starred'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
              ),
              Divider(
                height: 10.0,
                thickness: 1.0,
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),

            ],
          ),          
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Drawer'),
      ),
    );
  }
}