import 'package:flutter/material.dart';

class DetailData extends StatelessWidget{

  final int id;
  final String description;
  final double price;

  const DetailData({super.key, required this.id, required this.description, required this.price});
  @override
  Widget build(BuildContext context) {


    return Container(
      margin: const EdgeInsets.all(12),
      child: ListTile(
        title: Text(
          description,
          style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
        ),
        tileColor: Colors.redAccent[50],
        subtitle: Text(
          '${price.toStringAsFixed(2)} ден.',
          style: const TextStyle(
            color: Colors.greenAccent,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

  }

}