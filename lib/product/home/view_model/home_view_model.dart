import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int pageNoView = 0;

  void updatePage(int pageNo) {
    pageNoView = pageNo;
    notifyListeners();
  }
}
