// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  String firstname = "";
  String lastname = "";
  String email = "";
  String password = "";
  final _formkey = GlobalKey<FormState>();

  trysubmit(){
    final isvalid_1 = _formkey.currentState!.validate();
    if(isvalid_1){
      _formkey.currentState!.save();
      submitform();
    }
    else{
      print('error');
    }
  }

  submitform(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        backgroundColor: Colors.blue.shade500,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.blue.shade900,
                      icon: Icon(Icons.person),
                      filled: true,
                      hintText: 'Enter First Name'
                    ),
                    key: ValueKey('firstname'),
                    validator: (value) {
                      if(value.toString().isEmpty){
                        return 'First name should not be empty';
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      firstname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                    fillColor: Colors.blue.shade900,
                    icon: Icon(Icons.person),
                    filled: true,
                    hintText: 'Enter Last Name'
                    ),
                    key: ValueKey('lastname'),
                    validator: (value) {
                      if(value.toString().isEmpty){
                        return 'Last name should not be empty';
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      lastname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.blue.shade900,
                      icon: Icon(Icons.email),
                      filled: true,
                      hintText: 'Enter Email'
                    ),
                    key: ValueKey('email'),
                    validator: (value) {
                      if(value.toString().isEmpty){
                        return 'Email should not be empty';
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.blue.shade900,
                      icon: Icon(Icons.lock),
                      filled: true,
                      hintText: 'Enter Password'
                    ),
                    key: ValueKey('password'),
                    validator: (value) {
                      if(value.toString().length <= 5){
                        return 'Minimum 6 characters required';
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value){
                      password = value.toString();
                    },
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10
              ),

            ElevatedButton(
              onPressed: trysubmit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
      );
  }
}