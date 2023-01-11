// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class image_screen extends StatefulWidget {
  const image_screen({super.key});

  @override
  State<image_screen> createState() => _image_screenState();
}

class _image_screenState extends State<image_screen> {
  File? image;
  final ImagePicker picker = ImagePicker();

  Future getImage() async {
    final pickerImage = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickerImage != Null) {
        image = File(pickerImage!.path);
      } else {
        print("No Image");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: image == null ? const Text("No Image") : Image.file(image!)),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            getImage();
          }),
          child: Icon(Icons.camera),
        ));
  }
}
