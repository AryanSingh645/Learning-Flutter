// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'grid_view.dart';
import 'snackbar.dart';
import 'dismissible.dart';
import 'drawer.dart';
import 'alert.dart';
import 'bottomsheet.dart';
import 'animatedtext.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {

  int selectedindex = 0;
  String appbartitle = "SnackBar Widget";

  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  PageController pagecontroller = PageController(); 

  void showbottomsheet() {
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
  }

  void onTapped (int index) {
    setState(() {
      selectedindex = index;
    if (index == 0){
      appbartitle = 'SnackBar Widget';
    }
    else if (index == 1){
      appbartitle = 'Alert Widget';
    }
    else if(index == 2){
      appbartitle = 'Dismissible Widget';
    }
    });

    if(index == 3){
      showbottomsheet();
    }
    else{
      pagecontroller.jumpToPage(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbartitle),
        backgroundColor: Colors.green,
      ),
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
      body: Center(
        // child: widgets.elementAt(selectedindex),
        child: PageView(
          controller: pagecontroller,
          children: [
            SnackbarWidget(),
            AlertWidget(),
            DissmissibleWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}