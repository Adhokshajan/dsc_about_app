import 'package:dsc_about_app/members_str.dart';
import 'package:flutter/material.dart';

class MembersTile extends StatelessWidget {
  const MembersTile({super.key,required this.teamlist});
  final  MembersStr teamlist;

  @override
  Widget build(BuildContext context) {
    return Card(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal:20 ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.min,
        children: [
          Text(teamlist.Name),

          Row(
            children: [
              Text(teamlist.Designation),
            ],
          ),
        ],
      ),
    ),);
  }
}