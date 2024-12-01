import 'package:flutter/cupertino.dart';
import 'package:lab1/models/clothing.dart';
import 'package:lab1/widgets/clothes/clothes_card.dart';

class ClothesGrid extends StatefulWidget {
  final List<Clothing> clothes;
  const ClothesGrid({super.key, required this.clothes});

  @override
  State<ClothesGrid> createState() => _ClothesGrindState();

}

class _ClothesGrindState extends State<ClothesGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(padding: const EdgeInsets.all(5),
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        semanticChildCount: 250,
        childAspectRatio: 200/ 244,
        shrinkWrap: true,
        children: widget.clothes.map((clothes) => ClothesCard(
          id: clothes.id, name: clothes.name, description: clothes.description, price: clothes.price, imageUrl: clothes.imageUrl,
        )).toList()
    );
  }
}
