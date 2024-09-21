// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: Quotes(),
));

// class NinjaCard extends StatefulWidget {
//   @override
//   State<NinjaCard> createState() => _NinjaCardState();
// }

// class _NinjaCardState extends State<NinjaCard> {
//
//     int ninjaLevel = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: Text('Ninja ID Card'),
//         backgroundColor: Colors.grey[850],
//         elevation: 0.0,
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             ninjaLevel += 1;
//           });
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.grey[800],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Image.asset('assets/img.png'),
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/img.png'),
//                 radius: 70.0,
//               ),
//             ),
//             Divider(
//               height: 30.0,
//               color: Colors.grey[800],
//               thickness: 0.5,
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'NAME',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'Tyson',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 fontWeight: FontWeight.bold,
//                 fontSize: 28.0,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 30.0),
//             Text(
//               'CURRENT NINJA LEVEL',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               '$ninjaLevel',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 fontWeight: FontWeight.bold,
//                 fontSize: 28.0,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 30.0),
//             Row(
//               children: [
//                 Icon(
//                   Icons.mail,
//                   color: Colors.grey,
//                 ),
//                 SizedBox(width: 10.0),
//                 Text(
//                   'gearwar8340@gmail.com',
//                   style: TextStyle(
//                     color: Colors.grey,
//                     letterSpacing: 1.0,
//                     fontSize: 18.0,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List quotes = [
    Quote(text: 'Love is not a temporary feeling or emotion, it is the permanent state of unconditional oneness', author: 'Aryan Singh'),
    Quote(text: 'We all have two lives, the second one begins when you realise that you have only one', author: 'Aryan Singh'),
    Quote(text: 'Sometimes solution of a problem is changing the question itself', author: 'Aryan Singh'),
    Quote(text: 'Whatever your mind focuses on expands', author: 'Aryan'),
  ];

  void deleteQuote(Quote quote){
    setState(() {
      quotes.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),

      // body: Column(
      //   children: quotes.map((quote) => Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Text(
      //       '${quote.text} - ${quote.author}',
      //       style: TextStyle(
      //         fontSize: 18.0,
      //       )
      //     ),
      //   )).toList(),
      // ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList()
      ),
    );
  }
}





