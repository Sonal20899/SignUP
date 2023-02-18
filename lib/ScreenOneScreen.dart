import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/utility.dart';

import 'custom_text_decoration.dart';
import 'custom_text_style.dart';
import 'image_from_device.dart';

class SectionOneScreen extends StatefulWidget {
  const SectionOneScreen({super.key});

  @override
  State<SectionOneScreen> createState() => SectiononeState();
}

enum MOTType { rb2Wheeler, rb4Wheeler, rbPublicTransport, rbMultipleMode }

class SectiononeState extends State<SectionOneScreen> {
  String? modeOfTransport;
  String radioButtonItem = 'ONE';
  int id = 1;
  String? _MOTType = "";
  List state = [];
  var imageBool = false;

  ///TEXT EDITING CONTROLLER
  final TextEditingController _associateController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _licensetypeController = TextEditingController();
  final TextEditingController _licenseExpDateController =
      TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  File? imageFile;
  final _imageSelection = ImageFromDevice.getInstance();
  //ImageFromDevice.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Section 1"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: ListView(
          children: <Widget>[
            CustomTextStyle.bold(
              text: "Personal Information",
              fontSize: 16,
            ),

            ///associate name
            const SizedBox(
              height: 16,
            ),
            DropdownButtonFormField(
              value: modeOfTransport,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              hint: CustomTextStyle.regular(text: 'Associate Name'),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
              ),
              items: state.map((selected) {
                return DropdownMenuItem<String>(
                  value: selected.transportModes,
                  child: CustomTextStyle.regular(text: selected.transportModes),
                );
              }).toList(),
              onChanged: (value) {
                setState(
                  () => modeOfTransport = value.toString(),
                );
              },
              validator: (value) {
                if (value == null) {
                  return "Selection cannot be null";
                }
                return null;
              },
              // items: [],
              // onChanged: (Object? value) {},
            ),

            ///associate id
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _associateController,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              textInputAction: TextInputAction.done,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: CustomTextDecoration.textFieldDecoration(
                  labelText: "Associate id"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an Associate id ';
                }
                return null;
              },
            ),

            ///radio button of metro cycle
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextStyle.bold(text: "Motorcycle Operator License"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text("Yes"),
                        value: MOTType.rb2Wheeler.name.toString(),
                        groupValue: _MOTType!,
                        onChanged: (String? value) {
                          setState(() {
                            _MOTType = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text("No"),
                        value: MOTType.rb4Wheeler.name.toString(),
                        groupValue: _MOTType,
                        onChanged: (String? value) {
                          setState(() {
                            _MOTType = value;
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),

            ///associate state
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _stateController,
              // keyboardType: const TextInputType.numberWithOptions(
              //     signed: true, decimal: true),
              textInputAction: TextInputAction.done,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration:
                  CustomTextDecoration.textFieldDecoration(labelText: "State"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an state ';
                }
                return null;
              },
            ),

            ///license type
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _licensetypeController,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              textInputAction: TextInputAction.done,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: CustomTextDecoration.textFieldDecoration(
                  labelText: "License Type"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an license type';
                }
                return null;
              },
            ),

            ///license expiry date
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _licenseExpDateController,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              textInputAction: TextInputAction.done,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: CustomTextDecoration.textFieldDecoration(
                  labelText: "License expiry date"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an expiry date ';
                }
                return null;
              },
            ),

            ///2W DDT
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextStyle.bold(text: "2W DDT Course status"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text("Yes"),
                        value: MOTType.rb2Wheeler.name.toString(),
                        groupValue: _MOTType!,
                        onChanged: (String? value) {
                          setState(() {
                            _MOTType = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text("No"),
                        value: MOTType.rb4Wheeler.name.toString(),
                        groupValue: _MOTType,
                        onChanged: (String? value) {
                          setState(() {
                            _MOTType = value;
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),

            ///Course status
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _licenseExpDateController,
              // keyboardType: const TextInputType.numberWithOptions(
              //     signed: true, decimal: true),
              textInputAction: TextInputAction.done,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: CustomTextDecoration.textFieldDecoration(
                  labelText: "Course date"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an course date ';
                }
                return null;
              },
            ),

            ///capture image
            const SizedBox(
              height: 16,
            ),
            CustomTextStyle.bold(text: "Take a license image"),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () async {
                final images = await _imageSelection.imageCapture();
                imageFile = await resizeImage(images);
                setState(() {
                  imageBool = true;
                });
              },
              child: SizedBox(
                width: 160,
                height: 160,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  dashPattern: const <double>[4, 2],
                  color: Colors.black,
                  strokeWidth: 1,
                  child: imageBool == false
                      ? const Center(
                          child: Icon(
                            Icons.add_a_photo,
                            size: 32,
                          ),
                        )
                      : SizedBox(
                          width: 160,
                          height: 160,
                          child: Image.memory(
                            imageFile!.readAsBytesSync(),
                            fit: BoxFit.cover,
                            gaplessPlayback: true,
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
