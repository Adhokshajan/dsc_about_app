// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, unused_import

import 'dart:async';
import 'package:dsc_about_app/assets/teams_screen.dart';
import 'package:dsc_about_app/landing_page.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; 

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.black, // Set your splash screen background color
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/img1.jpg', width: 100, height: 100),
                SizedBox(height: 20),
                Text(
                  'Developer Student Club',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 253, 253),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 80,width: 80,),
                  Text('SRM IST Ramapuram',style: TextStyle(
                    color: const Color.fromARGB(255, 255, 253, 253),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
