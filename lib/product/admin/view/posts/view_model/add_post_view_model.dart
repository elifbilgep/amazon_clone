import 'dart:io';

import 'package:amazon_clone/core/utils/utils.dart';
import 'package:flutter/material.dart';

class AddPostViewModel extends ChangeNotifier {
  List<File?>? pickedFile;

  void selectImages() async {
    var res = await pickImage();
    pickedFile = res;
    notifyListeners();
  }
}
