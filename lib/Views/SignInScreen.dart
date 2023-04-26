import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicleinfo/Model/AppUtils/SignInUtil.dart';
import 'package:vehicleinfo/Model/AppUtils/SizeUtil.dart';

import '../Controller/SignInController.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Form(
          key: SignInUtil.formKey,
          child: SingleChildScrollView(
            child: GetBuilder<LogInController>(
              builder: (LogInController logInController) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/myimages/Signinimage.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Login",
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
                      padding: const EdgeInsets.only(top: 40.0,left: 40,right: 40),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2.5, color: Color(0xff191979)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.black54),
                          ),
                          hintText: "Email ID",
                          hintStyle:SignInUtil.hintText,
                          icon: Icon(CupertinoIcons.mail,size: 25,color: Colors.black26,),
                        ),
                        style: SignInUtil.inputText,
                        controller: SignInUtil.emailController,
                        validator: (val){
                          if( val == null  ||val.isEmpty )
                          {
                            return 'Enter Valid Email';
                          }
                          if(SignInUtil.isEmailValid == false)
                          {
                            return "Enter valid Email";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0,left: 40,right: 40),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2.5, color: Color(0xff191979)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.black54),
                          ),
                          suffixIcon: Icon(CupertinoIcons.eye,color: Colors.black26,),
                          hintText: "Password",
                          hintStyle:SignInUtil.hintText,
                          icon:(SignInUtil.showPass)?GestureDetector(
                              child: Icon(CupertinoIcons.eye_slash,size: 25,color: Colors.black26,)): Icon(CupertinoIcons.lock,size: 25,color: Colors.black26,),
                        ),
                        style: SignInUtil.inputText,
                        obscureText: (SignInUtil.showPass)?true:false,
                        controller: SignInUtil.passwordController,
                        validator: (val) {
                          if(val == null || val.isEmpty)
                          {
                            return 'Enter Must be 8 characters which contain one uppercase,symbo; and digit';
                          }
                          if(SignInUtil.validateStructure(val) == false)
                          {
                            return 'Enter Must be 8 characters which contain one uppercase,symbol and digit';
                          }
                          else
                          {
                            return null;
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40,left: 40,right: 40),
                      height: SizeUtils.h/16,
                      width: SizeUtils.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff191970)
                      ),
                      child: Center(
                        child: Text("Login",style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: CupertinoColors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                      child: Row(
                        children: [
                          Text("---------------------------------------",style: TextStyle(
                            color: Colors.black26,
                          ),),
                          Text(" or ",style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.black54
                          ),),
                          Text("---------------------------------------",style: TextStyle(
                            color: Colors.black26,
                          ),),

                        ],
                      ),
                    ),
                    Ink(
                      color: Colors.white54,

                      child: InkWell(
                        onTap: (){
                          logInController.
                          Validation();
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20,left: 40,right: 40),
                          height: SizeUtils.h/16,
                          width: SizeUtils.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12
                          ),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50.0,top: 10,bottom: 10,right: 30),
                                  child: Image(image: AssetImage('assets/myimages/Google.png')),
                                ),
                                Text("Login with Google",style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.w600,

                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text.rich(TextSpan(
                          children: [
                            TextSpan(text: "New to Logistics?",style: GoogleFonts.poppins(fontSize: 14,color: Colors.black54)),
                            TextSpan(text: " Register",style: GoogleFonts.poppins(fontSize: 14.5,fontWeight:FontWeight.w600,color: Color(0xff191970))),
                          ]
                      )),
                    )
                  ],
                );
              },

            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: CupertinoColors.white,
    );
  }
}
