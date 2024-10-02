import 'package:dsc_about_app/members_str.dart';
import 'package:dsc_about_app/members_tile.dart';
import 'package:flutter/material.dart';

class MembersList extends StatelessWidget {
  const MembersList({super.key, required this.teamlist,required this.removeTeamMem});
  final List<MembersStr> teamlist;
  final void Function(MembersStr team) removeTeamMem;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: teamlist.length,itemBuilder: (ctx,index)=>Dismissible(key: ValueKey(teamlist[index]),onDismissed: (direction){
      removeTeamMem(teamlist[index]);
    },child: MembersTile(teamlist: teamlist[index])) ,);
  }
}