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
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
       builder: (ctx)=>AddMembers(teammembers: _addTeamMem,),);

  }

  void _addTeamMem(MembersStr members_list){
    setState(() {
      _teammembers.add(members_list);
      
    });

  }

  void _removeTeamMem(MembersStr members_list){
    final memIndex=_teammembers.indexOf(members_list);
    setState(() {
      _teammembers.remove(members_list);
    });
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar
    (SnackBar(duration: Duration(seconds: 3),action: SnackBarAction(label: "Undo", onPressed: (){
      setState(() {
        _teammembers.insert(memIndex, members_list);
      });
    }),content:
     Text("Member deleted")),);
  }























  final List<MembersStr> _teammembers=[]; 
  @override
  Widget build(BuildContext context) {
    Widget mainContent=Center(child: Text("No Team Members, Add Members"),);
    if(_teammembers.isNotEmpty){
      mainContent=MembersList(teamlist: _teammembers,removeTeamMem: _removeTeamMem,);
    }





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
             Expanded(child:mainContent )],),) 
      );
  }
}