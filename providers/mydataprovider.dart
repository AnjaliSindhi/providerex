import 'package:flutter/material.dart';
import 'package:providerex/mydata.dart';

class MyDataProvider with ChangeNotifier{
  
 List <MyData> _items = [
    MyData(
      name :'divya',
      msg : 'hello',
      age : 20
    ),

    MyData(
      name :'ankita',
      msg : 'hi',
      age : 22
    ),

    MyData(
      name :'Rupal',
      msg : 'GBU',
      age : 24
    ),
 ];


  List <MyData> get items {
    return [..._items];
  }
}