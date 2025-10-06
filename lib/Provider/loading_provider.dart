import 'package:flutter/material.dart';

class LoadingProvider extends ChangeNotifier{
   bool _isloading = false;
  bool get isloading  => _isloading;
  bool _isVisibility = false;
  bool get isVisibility => _isVisibility; 
 
  void setLoading(bool value){
    _isloading = value;
    notifyListeners();
  }

  void toogleVisibility (){
    _isVisibility = !_isVisibility;
    
  }
}