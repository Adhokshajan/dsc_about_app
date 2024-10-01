import 'package:dsc_about_app/members_str.dart';
import 'package:flutter/material.dart';

class MembersList extends StatelessWidget {
  const MembersList({super.key, required this.teamlist});
  final List<MembersStr> teamlist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: teamlist.length,itemBuilder: (ctx,index)=>Text(teamlist[index].Name,style:TextStyle(color: Colors.white) ,));
  }
}