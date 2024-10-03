// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:dsc_about_app/aboutus_page.dart';
import 'package:dsc_about_app/assets/teams_screen.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Developer Students Club',style: TextStyle(color: const Color.fromARGB(255, 8, 210, 236)),),
          centerTitle: true,
        ),
        drawer: Drawer(  
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
           SizedBox(height: 30,),
            Text("DSC SRM IST",style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 8, 210, 236)),),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(color: const Color.fromARGB(255, 8, 210, 236)),),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()),
                );
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us',style: TextStyle(color: const Color.fromARGB(255, 8, 210, 236)),),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Team Members',style: TextStyle(color: const Color.fromARGB(255, 8, 210, 236)),),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TeamsScreen()),
                );
              },
            ),
          ],
        ),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("lib/assets/img1.jpg",width: 150,),
            SizedBox(height: 16,),
            Text(
              'Welcome to DSC!',
              style: TextStyle(fontSize: 24,color: const Color.fromARGB(255, 8, 210, 236)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Join us and enhance your skills through coding, workshops, and more. Collaborate with students and developers worldwide!',
                style: TextStyle(fontSize: 18,color: const Color.fromARGB(255, 8, 210, 236)),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AboutUsPage(),),);
              },
              child: Text('Learn More',style: TextStyle(color: Colors.black),),
      
              
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: const Color.fromARGB(255, 8, 210, 236), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
