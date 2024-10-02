// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AddMembers extends StatefulWidget {
  const AddMembers({super.key});

  @override
  State<AddMembers> createState() => _AddMembers();
}

class _AddMembers extends State<AddMembers> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),
    
    child: Column(
      children: [
        TextField()
      ],
    ),);
  }
}