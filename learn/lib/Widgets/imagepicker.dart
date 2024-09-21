// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_final_fields, unused_field, depend_on_referenced_packages, unnecessary_nullable_for_final_variable_declarations

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List <XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Image Picker')),
        backgroundColor: Colors.green.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              // width: double.infinity,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade800,
              child: Center(
                child: file == null? Text('Image not picked'):Image.file(File(file!.path),fit: BoxFit.cover,),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0,8.0,10.0,8.0),
                child: Text('Choose File'),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                for(int i = 0; i < photos!.length; i++){
                  print(files![i].path);
                }
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0,8.0,10.0,8.0),
                child: Text('Choose Files'),
              ),
            )
          ],

        ),
      ),
    );
  }
}