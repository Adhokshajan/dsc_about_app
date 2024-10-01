// ignore_for_file: prefer_const_constructors

import 'package:dsc_about_app/members_list.dart';
import 'package:dsc_about_app/members_str.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  final List<MembersStr> _teammembers=[
    MembersStr(Name: "Adhok", Designation: "app dev")
  ];
  




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
        home: Scaffold(body: Column(children: [ Expanded(child: MembersList(teamlist: _teammembers))],),) 
      );
  }
}