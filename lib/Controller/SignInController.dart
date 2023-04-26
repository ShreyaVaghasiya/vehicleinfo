import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicleinfo/Model/AppUtils/SignInUtil.dart';
class LogInController extends GetxController{
  Validation(){
    if(SignInUtil.formKey.currentState!.validate()){

    }else{
      print("---------Invalid Inputs-----------");
    }
    update();
  }
  authSignIn(context, setState) async {
    try {
      setState(() {
        SignInUtil.signIn = true;
      });

      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: SignInUtil.emailController.text,
        password: SignInUtil.passwordController.text,
      );

      SignInUtil.user = credential.user;
      print("Register User : ${SignInUtil.user}");

      // ignore: use_build_context_synchronously
      // Navigator.pushReplacementNamed(
      //   context,
      //   'home',
      // );

      setState(() {
        SignInUtil.signIn = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        SignInUtil.signIn = false;
      });

      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("No user found for that email."),
          ),
        );
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Wrong password provided."),
          ),
        );
      }
    }
    update();
  }

  // authSignUp(context, setState) async {
  //   try {
  //     setState(() {
  //       .signUp = true;
  //     });
  //
  //     final credential =
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email:.signUpEmail.text,
  //       password: Global.signUpPass.text,
  //     );
  //
  //     Global.user = credential.user;
  //     print("Register User : ${Global.user}");
  //
  //     // ignore: use_build_context_synchronously
  //     Navigator.pushReplacementNamed(
  //       context,
  //       'home',
  //     );
  //
  //     setState(() {
  //       Global.signUp = false;
  //     });
  //   } on FirebaseAuthException catch (e) {
  //     setState(() {
  //       Global.signUp = false;
  //     });
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text("The account already exists for that email."),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  //   update();
  // }
}