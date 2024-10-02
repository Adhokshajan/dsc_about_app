// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field

import 'package:flutter/material.dart';

class AddMembers extends StatefulWidget {
  const AddMembers({super.key});

  @override
  State<AddMembers> createState() => _AddMembers();
}

class _AddMembers extends State<AddMembers> {
  final _enteredname = TextEditingController();
  final _designation = TextEditingController();


  
  void _closeOverlay(){
    Navigator.pop(context);
  }







  @override
  void dispose() {
    // TODO: implement dispose
    _enteredname.dispose();
    _designation.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),
    
    child: Column(
      children: [
        TextField(
          controller: _enteredname,
          decoration: InputDecoration(
            label: Text("Member Name")

          ),
        ),
        SizedBox(height: 20,),                       
        TextField(
          controller: _designation,
          decoration: InputDecoration(
            label: Text("Designation")
          ),
        ),
        Row(
          children: [
            ElevatedButton(onPressed: (){}, child: Text("Save")),
            ElevatedButton(onPressed: _closeOverlay, child: Text("Cancel"))
          ],
        )
      ],
    ),);
  }
}