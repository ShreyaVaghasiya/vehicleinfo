import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInUtil{
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
  static final formKey = GlobalKey<FormState>();
  static bool showPass = false;
  static bool isEmailValid = false;
  static bool signIn = false, signUp = false;
  static User? user;
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static bool validateStructure(String value){
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}