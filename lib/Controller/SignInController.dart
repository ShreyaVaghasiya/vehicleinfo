import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicleinfo/Views/HomeScreen.dart';

import '../Model/AppUtils/SignInUtil.dart';

class SignInController extends GetxController {
  hidePassword() {
    SignInUtil.showPass = !SignInUtil.showPass;
    if (SignInUtil.showPass == true) {
      SignInUtil.showPassIcon = const Icon(
        CupertinoIcons.eye,
        size: 25,
        color: Colors.black26,
      );
    } else {
      SignInUtil.showPassIcon = const Icon(
        CupertinoIcons.eye_slash,
        size: 25,
        color: Colors.black26,
      );
    }
    update();
  }

  bool obscureTextShow() {
    if (SignInUtil.showPass == false) {
      update();
      return true;
    } else {
      update();
      return false;
    }
  }

  logInValidation() {
    if (SignInUtil.formKey.currentState!.validate()) {
      Get.to(Home_Screen());
    } else {}
    update();
  }


}
