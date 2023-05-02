import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicleinfo/Model/AppUtils/SignUpUtil.dart';

import '../Model/AppUtils/SignInUtil.dart';

class SignUpController extends GetxController {
  hidePassword() {
    SignUpUtil.showPass = !SignUpUtil.showPass;
    if (SignUpUtil.showPass == true) {
      SignUpUtil.showPassIcon = const Icon(
        CupertinoIcons.eye,
        size: 25,
        color: Colors.black26,
      );
    } else {
      SignUpUtil.showPassIcon = const Icon(
        CupertinoIcons.eye_slash,
        size: 25,
        color: Colors.black26,
      );
    }
    update();
  }

  bool obscureTextShow() {
    if (SignUpUtil.showPass == false) {
      update();
      return true;
    } else {
      update();
      return false;
    }
  }

  logInValidation() {
    if (SignUpUtil.formKey.currentState!.validate()) {
    } else {}
    update();
  }
}
