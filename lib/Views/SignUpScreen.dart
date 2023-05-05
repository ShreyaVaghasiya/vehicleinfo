import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleinfo/Controller/SignUpController.dart';
import 'package:vehicleinfo/Model/AppUtils/SignInUtil.dart';
import 'package:vehicleinfo/Model/AppUtils/SignUpUtil.dart';
import 'package:get/get.dart';
import '../Controller/SignInController.dart';
import '../Model/AppUtils/SizeUtil.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: SignUpUtil.formKey,
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 20)),
                const Image(
                  image: AssetImage(
                      'assets/myimages/signupimage.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20,left: 40.0,bottom: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: CupertinoColors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 40, right: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.5, color: Color(0xff191979)),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black54),
                      ),
                      hintText: "Email ID",
                      hintStyle: SignUpUtil.hintText,
                      icon: const Icon(
                        CupertinoIcons.mail,
                        size: 25,
                        color: Colors.black26,
                      ),
                    ),
                    style: SignUpUtil.inputText,
                    controller: SignUpUtil.emailController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter the Email";
                      }
                      if (!RegExp(
                              r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                          .hasMatch(val)) {
                        return "Enter Valid a Email";
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 40, right: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.5, color: Color(0xff191979)),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black54),
                      ),
                      hintText: "Full Name",
                      hintStyle: SignUpUtil.hintText,
                      icon: const Icon(
                        CupertinoIcons.person,
                        size: 25,
                        color: Colors.black26,
                      ),
                    ),
                    style: SignUpUtil.inputText,
                    controller: SignUpUtil.nameController,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "Please Enter the Name";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 40, right: 40),
                  child: GetBuilder(
                      init: SignUpController(),
                      builder: (SignUpController signUpController) {
                        return TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2.5, color: Color(0xff191979)),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black54),
                              ),
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    signUpController.hidePassword();
                                  },
                                  child: SignUpUtil.showPassIcon),
                              hintText: "Password",
                              hintStyle: SignUpUtil.hintText,
                              icon: const Icon(
                                CupertinoIcons.lock,
                                color: Colors.black26,
                              )),
                          style: SignUpUtil.inputText,
                          obscureText: signUpController.obscureTextShow(),
                          controller: SignUpUtil.passwordController,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Enter Password';
                            }
                            if (SignUpUtil.validateStructure(val) == false) {
                              return 'Enter Strong Password';
                            } else {
                              return null;
                            }
                          },
                        );
                      }),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 40, right: 40),
                  child: Text.rich(
                    textAlign: TextAlign.left,
                    TextSpan(children: [
                      TextSpan(
                          text: "By Signing up, you're agree to our",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black54)),
                      TextSpan(
                          text: " Terms & Conditions ",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff191970))),
                      TextSpan(
                          text: "and",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black54)),
                      TextSpan(
                          text: " Privacy Policy",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff191970))),
                    ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    signUpController.logInValidation();
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                    height: SizeUtils.h / 16,
                    width: SizeUtils.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff191970)),
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: CupertinoColors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                  child: InkWell(
                    onTap: () {
                      SignInUtil.emailController.clear();
                      SignInUtil.passwordController.clear();
                      Get.back();
                    },
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Joined us before?",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.black54)),
                      TextSpan(
                          text: " Log in",
                          style: GoogleFonts.poppins(
                              fontSize: 14.5,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff191970))),
                    ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: CupertinoColors.white,
    );
  }
}
