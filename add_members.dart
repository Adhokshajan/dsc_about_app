// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field

import 'package:dsc_about_app/members_str.dart';
import 'package:flutter/material.dart';

class AddMembers extends StatefulWidget {
  const AddMembers({super.key,
  required this.teammembers});

  final void Function(MembersStr teammembers) teammembers;

  @override
  State<AddMembers> createState() => _AddMembers();
}

class _AddMembers extends State<AddMembers> {
  final _enteredname = TextEditingController();
  final _designation = TextEditingController();
  Dept _entereddept=Dept.Content;


  
  void _closeOverlay(){
    Navigator.pop(context);
  }


  void _submitMembers(){

    if(_enteredname.text.trim().isEmpty || _designation.text.trim().isEmpty){
      showDialog(context: context, builder:(ctx)=>AlertDialog(
        title: Text("Invalid Input"),
        content: Text("Please Enter a Name,Designation"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(ctx);
          }, child: Text("ok"))
        ],
      ),);
      return;


    }

    widget.teammembers(MembersStr(
      Name: _enteredname.text.toUpperCase(),
       Designation: _designation.text.toUpperCase(),
        department: _entereddept),);
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(padding: EdgeInsets.fromLTRB(16,48,16,16),
      
      child: Column(
        
        
        children: [
          TextField(
            controller: _enteredname,
            decoration: InputDecoration(
              label: Text("Member Name",style: TextStyle(color:  const Color.fromARGB(255, 8, 210, 236)),),
              focusColor:  const Color.fromARGB(255, 8, 210, 236),
              border: OutlineInputBorder()
      
            ),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20,),                       
          TextField(
            controller: _designation,
            decoration: InputDecoration(
              focusColor: Colors.white,
              border: OutlineInputBorder(),
              fillColor: const Color.fromARGB(255, 8, 210, 236),
              label: Text("Designation",style: TextStyle(color:  const Color.fromARGB(255, 8, 210, 236)),),
              hintStyle: TextStyle(color: Colors.white)
            ),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20,), 
          Row(children: [Text("Department",style: TextStyle(color:  const Color.fromARGB(255, 8, 210, 236)),)],),
          Row(
            children: [
              DropdownButton(value: _entereddept,items: Dept.values.map((department) =>
               DropdownMenuItem(value: department,
               child: Text(department.name.toString(),style: TextStyle(color:  const Color.fromARGB(255, 8, 210, 236)),))).toList(),
                onChanged: (value){
                  if(value == null){
                    return;
                  }
                  setState(() {
                    _entereddept=value;
                  });
                }),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              ElevatedButton(onPressed: _submitMembers,style: ElevatedButton.styleFrom(backgroundColor:  const Color.fromARGB(255, 8, 210, 236)), child: Text("Save",style: TextStyle(color:  Colors.black),)),
              SizedBox(width: 10,),
              ElevatedButton(onPressed: _closeOverlay,style: ElevatedButton.styleFrom(backgroundColor:  const Color.fromARGB(255, 8, 210, 236)), child: Text("Cancel",style: TextStyle(color:  Colors.black),))
            ],
          )
        ],
      ),),
    );
  }
}