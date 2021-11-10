import 'package:flutter/material.dart';
import 'package:laundry_app/db/db_helper.dart';
import 'package:laundry_app/model/cart_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class cart_provider with ChangeNotifier{

  db_helper db=db_helper();
  int _counter=0;
  int get counter=> _counter;
  double _totalprice=0.0;
  double get totalprice => _totalprice;

  late Future<List<cart_model>> _cart;
  Future<List<cart_model>> get cart => _cart;

  Future<List<cart_model>> getData() async
  {
    _cart=db.getcart_list();
    return _cart;
  }


  void _setprefItems() async
  {
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.setInt('cart_item', _counter);
    prefs.setDouble('total_price', _totalprice);
    notifyListeners();
  }

  void _getprefItems() async
  {
    SharedPreferences prefs=await SharedPreferences.getInstance();
    _counter=prefs.getInt('cart_item') ?? 0;
    _totalprice=prefs.getDouble('total_price') ?? 0;
    notifyListeners();
  }

  void addtotalprice(double productprice)
  {
    _totalprice=_totalprice+productprice;
    _setprefItems();
    notifyListeners();
  }

  void removertotalprice(double productprice)
  {
    _totalprice=_totalprice-productprice;
    _setprefItems();
    notifyListeners();
  }

  double gettotalprice ()
  {
    _getprefItems();
    return _totalprice;
  }

  void addcounter()
  {
    _counter++;
    _setprefItems();
    notifyListeners();
  }

  void removercounter()
  {
    _counter--;
    _setprefItems();
    notifyListeners();
  }

  int getcounter ()
  {
    _getprefItems();
    return _counter;
  }

}