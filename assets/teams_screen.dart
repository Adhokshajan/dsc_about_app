// ignore_for_file: prefer_const_constructors

import 'package:dsc_about_app/add_members.dart';
import 'package:dsc_about_app/members_list.dart';
import 'package:dsc_about_app/members_str.dart';
import 'package:flutter/material.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsScreen();
}

class _TeamsScreen extends State<TeamsScreen> {

  void _openAddMembers(){
    showModalBottomSheet(context: context, builder: (ctx)=>AddMembers(),);

  }























  final List<MembersStr> _teammembers=[
    MembersStr(Name: "Adhok", Designation: "app dev",department:Dept.Technical)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Team Members",style: TextStyle(color: const Color.fromARGB(255, 8, 210, 236)),),
            actions: [IconButton(onPressed:_openAddMembers, icon: Icon(Icons.add))],



          ),



          body: Column(children: [
            SizedBox(height: 50,),
             Expanded(child: MembersList(teamlist: _teammembers))],),) 
      );
  }
}