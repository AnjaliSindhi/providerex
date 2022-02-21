import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{
  bool? iseligible ;
  String? elgibilityMsg = "";

  void check(age){
    if(age>=18){
      iseligible = true;
      elgibilityMsg = "You are eligible" ;
      notifyListeners();
    }
    else{
      iseligible = false;
      elgibilityMsg = "You are not eligible" ;
      notifyListeners();
    }
  }
}