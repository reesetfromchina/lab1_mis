import 'package:flutter/material.dart';
import 'package:lab1/models/clothing.dart';
import 'package:lab1/widgets/clothes/clothes_card_data.dart';

class ClothesCard extends StatelessWidget {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  const ClothesCard({super.key, required this.id, required this.name, required this.imageUrl, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
          splashColor: Colors.purple[50],
          onTap: () => {
            Navigator.pushNamed(context, '/details',
                arguments: Clothing(id: id, name: name,description: description, price: price, imageUrl: imageUrl))
          },
          child: Container(
            margin: const EdgeInsets.all(6.0),
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple.withOpacity(0.6), width: 1),
                borderRadius: BorderRadius.circular(16)
            ),
            child: ClothesCardData(image: imageUrl, name: name),
          )
      ),
    );
  }
}
