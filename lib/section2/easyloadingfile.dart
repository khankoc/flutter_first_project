import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';


void configLoading(){
  EasyLoading.instance
  ..displayDuration = const Duration(milliseconds: 623)
  ..indicatorType = EasyLoadingIndicatorType.circle
  ..loadingStyle = EasyLoadingStyle.dark
  ..indicatorSize = 45.0
  ..radius = 10.0
  ..progressColor = Colors.black
  ..backgroundColor = Color.fromARGB(255, 255, 255, 255)
  ..indicatorColor = Colors.yellow
  ..textColor = Colors.yellow
  ..maskColor = Colors.blue.withOpacity(0.5)
  ..userInteractions = true
  ..dismissOnTap = true
  ;
}