

import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget{
  final int id;
  final String name;


  const DetailTitle({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {

    return SafeArea(child:
    Chip(
      label: Text(name,
          style: const TextStyle(fontSize: 24, color: Colors.black)
      ),
      backgroundColor: Colors.white,
      avatar: ClipOval(
          child: Text(id.toString())),),);
  }


}