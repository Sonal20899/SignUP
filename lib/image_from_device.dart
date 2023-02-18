import 'dart:io';

import 'package:images_picker/images_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspaths;

class ImageFromDevice {
  static final _sharedInstance = ImageFromDevice._internal();

  ImageFromDevice._internal();

  static ImageFromDevice getInstance() {
    return _sharedInstance;
  }

  Future<File> imageCapture() async {
    // return File("");
    final imageFile = await ImagesPicker.openCamera();

    // final imageFile = await ImagePicker.pickImage(
    //   preferredCameraDevice: CameraDevice.front,
    //   source: ImageSource.camera,
    //   // maxHeight: 140,
    //   // maxWidth: 140,
    // );
    final appDir = await syspaths.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile!.first.path);
    // final savedImage = await imageFile.first.copy('${appDir.path}/$fileName');

    return File(imageFile.first.path);
  }

  // Future<File> selectFromGallery() async {
  //   // return File("");
  //   // final imageFile = await ImagePicker.pickImage(
  //   //   source: ImageSource.gallery,
  //   //   imageQuality: 50,
  //   // );
  //   final imageFile = await ImagesPicker.pick();
  //
  //   final appDir = await syspaths.getApplicationDocumentsDirectory();
  //   final fileName = path.basename(imageFile!.first.path);
  //   // final savedImage = await imageFile.copy('${appDir.path}/$fileName');
  //
  //   return File(imageFile.first.path);
  // }
}
