import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title});

  final String title;

   final List<Product> products = [
     Product(
         name: "T-Shirt",
         description: "Comfortable and stylish cotton T-Shirt. Available in various colors.",
         price: 700,
         imageUrl: "https://contents.mediadecathlon.com/p2606947/k1c9e0ffdefc3e67bdeabc82be7893e93/men-s-running-t-shirt-red-decathlon-8771124.jpg?f=1920x0&format=auto"
     ),
     Product(
         name: "Cap",
         description: "Stylish baseball cap with adjustable strap.",
         price: 250,
         imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-eJR6z-8vPb4kdmP8xtndSuidqToJtk5PdQ&s"
     ),
     Product(
         name: "Sweatshirt",
         description: "Warm and cozy fleece sweatshirt for cooler weather.",
         price: 1500,
         imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejWrvf1DQ8rNVoO_PY06dJoVRE-ZgOa-33Q&s"
     ),
     Product(
         name: "Dolce Jeans",
         description: "Classic blue denim jeans with a relaxed fit.",
         price: 48304,
         imageUrl: "https://www.dolcegabbana.com/dw/image/v2/BKDB_PRD/on/demandware.static/-/Sites-15/default/dw44d7770f/images/zoom/GWVNXZG8FJ8_S9001_4.jpg?sw=740&sh=944"
     ),

   ];

   @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: widget.products.map((product) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
            child: Card(
              elevation: 5,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    product.imageUrl,
                    height: 110,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Text(
                      product.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      product.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      '${product.price.toStringAsFixed(2)} ден.',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
