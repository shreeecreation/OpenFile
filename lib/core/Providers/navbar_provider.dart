import 'package:flutter/material.dart';

class NavbarCounter with ChangeNotifier {
  int _index = 0;
  int get counter => _index;

  void indexCounter(int itemsindex) {
    _index = itemsindex;
    notifyListeners();
  }
}
