import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpUtil{
  static dynamic hintText =  GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.black54,
  );
  static dynamic inputText = GoogleFonts.lato(
      fontSize: 16,
      letterSpacing: 1,
      color: CupertinoColors.black,
      fontWeight: FontWeight.w400
  );
  static TextEditingController emailController = TextEditingController();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static bool validateStructure(String value){
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
  static dynamic showPassIcon = const Icon(
    CupertinoIcons.eye_slash,
    size: 25,
    color: Colors.black26,
  );
  static final formKey = GlobalKey<FormState>();
  static bool showPass = false;
}