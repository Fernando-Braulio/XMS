import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xms/route/app_routes.dart';
import 'package:xms/widgets/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    getPages: Routes.routes,
    theme: ThemeData(primaryColor: Colors.white),
    home: SplashScreen(),
  ));
}
