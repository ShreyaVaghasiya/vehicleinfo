import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Views/SplashScreen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyApp(),
      },
    ),
  );
}
