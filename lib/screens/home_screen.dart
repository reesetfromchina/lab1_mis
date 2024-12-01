import 'package:flutter/material.dart';
import 'package:lab1/widgets/clothes/clothes_grid.dart';
import '../models/clothing.dart';

class Home extends StatefulWidget {
   const Home({super.key});
   
   @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Clothing> clothes = [
    Clothing(
        id: 1,
        name: "T-Shirt",
        description: "Comfortable and stylish cotton T-Shirt. Available in various colors.",
        price: 700,
        imageUrl: "https://contents.mediadecathlon.com/p2606947/k1c9e0ffdefc3e67bdeabc82be7893e93/men-s-running-t-shirt-red-decathlon-8771124.jpg?f=1920x0&format=auto"
    ),
    Clothing(
        id: 2,
        name: "Cap",
        description: "Stylish baseball cap with adjustable strap.",
        price: 250,
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-eJR6z-8vPb4kdmP8xtndSuidqToJtk5PdQ&s"
    ),
    Clothing(
        id: 3,
        name: "Sweatshirt",
        description: "Warm and cozy fleece sweatshirt for cooler weather.",
        price: 1500,
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejWrvf1DQ8rNVoO_PY06dJoVRE-ZgOa-33Q&s"
    ),
    Clothing(
        id: 4,
        name: "Dolce Jeans",
        description: "Elevate your style with Dolce Jeans – the perfect blend of luxury and comfort. Made from premium denim, these jeans offer a sleek, flattering fit that enhances your natural shape. With their versatile design, Dolce Jeans are perfect for both casual outings and semi-formal events. Crafted for durability and long-lasting wear, they promise a chic, modern look with every wear. Upgrade your wardrobe today and experience the perfect balance of fashion and function. Don't miss out on these must-have jeans!",
        price: 48304,
        imageUrl: "https://www.dolcegabbana.com/dw/image/v2/BKDB_PRD/on/demandware.static/-/Sites-15/default/dw44d7770f/images/zoom/GWVNXZG8FJ8_S9001_4.jpg?sw=740&sh=944"
    ),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Clothing App", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ClothesGrid(clothes: clothes),
    );

  }
}
