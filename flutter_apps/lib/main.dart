// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('My Flutter App'),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),

      // body: Center(
      //   // child: Image(
      //   //   image: AssetImage('assets/ai_2.jpeg'),
      //   // ),
      //   // child: Image.asset('assets/ai_1.jpeg'), // another way to add image.
      //
      //   // child: Icon(
      //   //   Icons.airport_shuttle,
      //   //   color: Colors.lightBlue,
      //   //   size: 50.0,
      //   // ),
      //
      //   // child: ElevatedButton(
      //   //   onPressed: () {},
      //   //   style: ButtonStyle(
      //   //     backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
      //   //     foregroundColor: MaterialStateProperty.all(Colors.white),
      //   //   ),
      //   //   child: Text('Click'),
      //   // ) ,
      //
      //   child: ElevatedButton.icon(
      //     onPressed: () {},
      //     icon: Icon(Icons.mail),
      //     label: Text('Mail Me'),
      //     style: ButtonStyle(
      //       backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
      //     ),
      //   ),
      //
      // ),
      
      // body: Container(
      //   // color: Colors.grey, // you can't use color and decoration both simultaneously
      //   padding: EdgeInsets.all(20.0),
      //   margin: EdgeInsets.all(20.0),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(20.0),
      //       bottomRight: Radius.circular(20.0),
      //     ),
      //     color: Colors.lightBlue,
      //   ),
      //   child: Text('Hi Aryan'),
      // ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   textBaseline: TextBaseline.alphabetic,
      //   children: [
      //     Text('Hi Aryan'),
      //
      //     TextButton(
      //       onPressed: () {},
      //       style: ButtonStyle(
      //         backgroundColor: MaterialStateProperty.all(Colors.amber),
      //         foregroundColor: MaterialStateProperty.all(Colors.white),
      //       ),
      //       child: Text('Click Me!'),
      //     ),
      //
      //     ElevatedButton.icon(
      //       onPressed: (){},
      //       icon: Padding(
      //         padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 0),
      //         child: Icon(
      //           Icons.mail_lock,
      //           color: Colors.white,
      //         ),
      //       ),
      //       label: Padding(
      //         padding: EdgeInsets.only(top: 20.0, bottom: 20.0, right: 20.0, left: 0),
      //         child: Text('Mail'),
      //       ),
      //       style: ButtonStyle(
      //         backgroundColor: MaterialStateProperty.all(Colors.amber),
      //       ),
      //     ),
      //   ],
      // ),
      // As rows we can use column as well in the similar way
      body: Row(
        children: [
          Expanded(
            flex: 3,
              child: Image.asset('assets/ai_1.jpeg')
          ),
          Expanded(
            // flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            // flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            // flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[600],
        child: Text('Click'),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
