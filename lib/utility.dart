import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
//import "package:platform_device_id/platform_device_id.dart";

const Color TEXT_LABEL = Color(0xFF111111);
const Color TEXT_SUB_LABEL = Color(0xFF111111);
const Color TEXT_DESCRIPTION = Colors.black;
const Color TEXT_ICON_TAG = Color(0xFF4f4f4f);

const Color primaryColor = Color(0xFF017DC7);
const Color primaryDarkColor = Color(0xff016198);
const Color secondaryColor = Color(0xFFccecff);
const Color Primary = Color(0xff4f359b);
const Color white = Color(0xffffffff);

const String intro_title1 = "Title 1";
const String intro_title2 = "Title 2";
const String intro_title3 = "Title 3";

const String intro_description1 = "description 1";
const String intro_description2 = "description 2";
const String intro_description3 = "description 3";

const String title_safety_dlg = "Safety guidelines";
const String msg_safety_dlg =
    '1.	TCPSL is committed to the safety and wellbeing of all its associates.\n2. All the members associated with TCPSL are accountable for their own as well as their co-members’ safety.\n3. I am aware of the TCPSL safety standards and I am 100% committed to adhere to them.\n4. I shall report any observed safety threat, safety violation or incident on a daily basis in the Safety TabApp.\n5. Any violation to the TCPSL safety standards / policy would lead to the strict disciplinary action.\n';

Future<String> getDeviceId() async {
  String? deviceId;
  try {
    var PlatformDeviceId;
    deviceId = await PlatformDeviceId.getDeviceId;
  } on PlatformException {
    deviceId = 'Failed to get deviceId.';
  }
  return deviceId!;
}

callToastMethod(String toastMessage) {
  Fluttertoast.showToast(
      msg: toastMessage,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: primaryColor,
      textColor: Colors.white,
      fontSize: 16.0);
}

///FUNCTION TO RESIZE THE IMAGE TO 50% AS ITS WAS TAKING SPACE IN LOCAL DB
Future<File> resizeImage(img) async {
  // ImageProperties properties =
  //     await FlutterNativeImage.getImageProperties(img.path);

  File compressedFile = await FlutterNativeImage.compressImage(
    img.path,
    quality: 50,
  );

  // delete original file
  try {
    if (await img.exists()) {
      await img.delete();
    }
  } catch (e) {
    // Error in getting access to the file.
  }

  return File(compressedFile.path);
}
