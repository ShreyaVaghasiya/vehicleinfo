import 'package:flutter/cupertino.dart';

class HomeUtils{
  static TextEditingController vehicleNoController = TextEditingController();
  static final formKey = GlobalKey<FormState>();
  static bool validateStructure(String value){
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[0-9]).{10,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}