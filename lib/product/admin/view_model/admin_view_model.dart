import 'package:flutter/material.dart';

class AdminViewModel extends ChangeNotifier {
  int pageNo = 0;

  void updatePageNo(int pageNoView) {
    pageNo = pageNoView;
    notifyListeners();
  }
}
