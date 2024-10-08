// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dsc_about_app/assets/teams_screen.dart';
import 'package:dsc_about_app/landing_page.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('About Us',style: TextStyle(color: const Color.fromARGB(255, 8, 210, 236)),),
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
            SizedBox(height: 20,),
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
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'About DSC',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 8, 210, 236),),
              ),
              SizedBox(height: 10),
              Text(
              '''The Developer Students Club is a platform for integrative students to interact with each other in various domains to identify social problems and provide engineering solutions. This initiative helps to develop team spirit, leadership, and practical skills.

We also have the vision to make this place dedicated enforcement for allowing our members and other students to explore ideas, experiencing the process of creation of technology from ideation to prototyping.

We believe in giving hands-on experience to participants and members through seminars, hands-on workshops, boot camps, and tech talks and also providing platforms for a competition like hackathons, solution challenge, study jam, etc.

The activities of the club are determined by the particular interest of the students, as well as the availability of necessary resources and the particular technology needs of the community. We believe in creating a wide-spread impact on the social level by building solutions.

 "Where ideas turn into reality''',
                style: TextStyle(fontSize: 18,color: const Color.fromARGB(255, 8, 210, 236), ),textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Vision & Mission',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 8, 210, 236),),
              ),
              SizedBox(height: 10),
              Text(
                'Our vision is to create a global network of students and developers who collaborate, learn, and build solutions that can make a difference. We organize workshops, hackathons, and coding challenges to foster innovation and learning among students.',
                style: TextStyle(fontSize: 18,color: const Color.fromARGB(255, 8, 210, 236),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
