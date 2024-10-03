// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:dsc_about_app/aboutus_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer Students Club'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to DSC!',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Join us and enhance your skills through coding, workshops, and more. Collaborate with students and developers worldwide!',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AboutUsPage(),),);
            },
            child: Text('Learn More'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}
