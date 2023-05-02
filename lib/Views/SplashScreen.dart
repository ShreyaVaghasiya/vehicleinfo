import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/AppUtils/SizeUtil.dart';
import 'SignInScreen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Sign_In(),
            )));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: SizeUtils.h / 1.6,
              width: SizeUtils.w / 1.6,
              decoration: const BoxDecoration(
                  color: CupertinoColors.white, shape: BoxShape.circle),
            ),
            Positioned(
                top: SizeUtils.h / 4.5,
                left: SizeUtils.w / 8,
                child: const Image(
                    image: AssetImage('assets/myimages/splashimage.png'))),
            Positioned(
              top: SizeUtils.h / 4.8,
              left: SizeUtils.w / 3.4,
              child: Text(
                "RTO",
                style: GoogleFonts.robotoSlab(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff191970)),
              ),
            ),
            Positioned(
              top: SizeUtils.h / 2,
              child: Text(
                "Get Vehicle Details by its Number",
                style: GoogleFonts.lato(
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                    color: CupertinoColors.white),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xff191970),
    );
  }
}
