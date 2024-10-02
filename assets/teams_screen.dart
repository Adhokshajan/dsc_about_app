import 'package:dsc_about_app/members_list.dart';
import 'package:dsc_about_app/members_str.dart';
import 'package:flutter/material.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsScreen();
}

class _TeamsScreen extends State<TeamsScreen> {

  final List<MembersStr> _teammembers=[
    MembersStr(Name: "Adhok", Designation: "app dev",department: Dept.Technical)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
        home: Scaffold(body: Column(children: [SizedBox(height: 50,), Text("DSC"),Expanded(child: MembersList(teamlist: _teammembers))],),) 
      );
  }
}