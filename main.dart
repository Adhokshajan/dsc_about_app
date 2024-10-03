
import 'package:dsc_about_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'dart:io';


void main() async  {

  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }}