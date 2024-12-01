import 'package:flutter/material.dart';
import 'package:lab1/widgets/details/detail_data.dart';
import 'package:lab1/widgets/details/detail_title.dart';
import '../models/clothing.dart';
import '../widgets/details/detail_back_button.dart';
import '../widgets/details/detail_image.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();

}

class _DetailsState extends State<Details> {

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)?.settings.arguments as Clothing;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            DetailTitle(id: item.id, name: item.name),
            DetailImage(image: item.imageUrl),

            DetailData(id: item.id,
            description: item.description,
            price: item.price),
          ],
        ),
      ),
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }

}