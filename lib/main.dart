import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:rahove_ui_task/screens/login.dart';
import 'package:rahove_ui_task/screens/main_page.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
            splashIconSize: 220,
            duration: 3000,
            splash: Image.asset("assets/logo.png"),
            nextScreen: const Login(),
            splashTransition: SplashTransition.scaleTransition),
      );
    });
  }
}
