import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier {
  List Fav_name = [];

  List get favorite_name => Fav_name;

  void favorites(String item) {
    final fav_list = Fav_name.contains(item);
    if (fav_list) {
      Fav_name.remove(item);
    }
    else {
      Fav_name.add(item);
    }
    notifyListeners();
  }

  bool icon_change(String icon_name) {
    final fav_icon = Fav_name.contains(icon_name);
    return fav_icon;
  }
}
