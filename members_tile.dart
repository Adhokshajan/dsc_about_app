// ignore_for_file: prefer_const_constructors

import 'package:dsc_about_app/members_str.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MembersTile extends StatelessWidget {
  const MembersTile({super.key,required this.teamlist});
  final  MembersStr teamlist;

  @override
  Widget build(BuildContext context) {
    return Card(color: const Color.fromARGB(255, 8, 210, 236),child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal:20 ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.min,
        children: [
          Text(teamlist.Name,style: GoogleFonts.robotoSlab(color: Colors.black),),

          Row(
            children: [
              Text(teamlist.Designation,style: GoogleFonts.robotoSlab(color: Colors.black),),
            ],
          ),
          Row(children: [
            Text(teamlist.department.name.toString(),style: GoogleFonts.robotoSlab(color: Colors.black),)
            
          ],)
        ],
      ),
    ),);
  }
}